package controller;

import java.io.File;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.ProductVO;
import handler.FileHandler;
import net.coobird.thumbnailator.Thumbnails;
import service.ProductService;
import service.ProductServiceImpl;

@WebServlet("/prd/*")
public class ProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(ProductCtrl.class);
	private final String UTF8 = "utf-8";
	private ProductService psv;
	private RequestDispatcher rdp;
	private int isUp;
	private String destPage;
	private String savePath;
       
    public ProductCtrl() {
    	psv = new ProductServiceImpl();
    }

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> path : " + path);
		
		switch (path) {
		case "add":
			isUp = psv.cart(new ProductVO(req.getParameter("pname"),
										Math.floor(Double.parseDouble(req.getParameter("price"))),
										req.getParameter("psize"),
										Integer.parseInt(req.getParameter("pcount"))));
										
			log.info(">>> ProductCtrl > add > {}", isUp > 0 ? "OK":"Fail");
			destPage = "/product/tlist.jsp";
			break;
		case "detail":
			req.setAttribute("pvo", psv.getDetail(Long.parseLong(req.getParameter("pno"))));
			destPage = "/product/detail.jsp";
			break;
		case "tlist":
			req.setAttribute("list", psv.gettList());
			destPage = "/product/tlist.jsp";
			break;
		case "plist":
			req.setAttribute("list", psv.getpList());
			destPage = "/product/plist.jsp";
			break;
		case "olist":
			req.setAttribute("list", psv.getoList());
			destPage = "/product/olist.jsp";
			break;
		case "slist":
			req.setAttribute("list", psv.getsList());
			destPage = "/product/slist.jsp";
			break;
		case "alist":
			req.setAttribute("list", psv.getaList());
			destPage = "/product/alist.jsp";
			break;
		case "register":
			destPage = "/product/register.jsp";
			break;
		case "insert":
			try {
				savePath = getServletContext().getRealPath("/_fileUpload");
				File fileDir = new File(savePath);
				
				DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
				fileItemFactory.setRepository(fileDir);
				fileItemFactory.setSizeThreshold(5*1024*1024); 
				
				ProductVO pvo = new ProductVO();
				ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);			
				
				List<FileItem> itemList = fileUpload.parseRequest(req);
				for (FileItem item : itemList) {
					switch (item.getFieldName()) {
					case "pid":
						pvo.setPid(Integer.parseInt(item.getString(UTF8)));
						break;
					case "pname":
						pvo.setPname(item.getString(UTF8));
						break;
					case "psize":
						pvo.setPsize(item.getString(UTF8));
						break;
					case "price":
						pvo.setPrice(Math.floor(Integer.parseInt(item.getString(UTF8))));
						break;
					
					case "imageFile":
						if (item.getSize() > 0) {						
							String fileName = item.getName() 
									.substring(item.getName().lastIndexOf(File.separator)+1);
							
							
							
							fileName = System.currentTimeMillis() + "_" + fileName;
							File UploadFilePath = new File(fileDir + File.separator + fileName);
							
							try {
								item.write(UploadFilePath); 
								pvo.setImage_file(fileName);
								
								Thumbnails.of(UploadFilePath)
								.size(600, 800)
								.toFile(new File(fileDir + File.separator + "th_"+ fileName));
								
								
							} catch (Exception e) {
								log.info(">>> File Write on disk Fail");
								e.printStackTrace();
							}
						}
						isUp = psv.register(pvo);
						log.info(">>> ProductCtrl > insert > {}", isUp > 0 ? "OK":"Fail");
						destPage = "tlist";
						break;

					default:
						break;
					}
				}
					
				} catch (FileUploadException e) {
					
					e.printStackTrace();
				}
				break;
		case "remove":
			long pno = Long.parseLong(req.getParameter("pno"));	
			String imageFileName = psv.getFileName(pno);
			
			FileHandler fileHandler = new FileHandler();			
			savePath = getServletContext().getRealPath("/_fileUpload");
			
			isUp = fileHandler.deleteFile(imageFileName, savePath);
			
			isUp = psv.remove(pno);
			log.info(">>> ProductCtrl > Remove > {}", isUp > 0 ? "OK":"Fail");
			destPage = "tlist";
			break;
		default:
			break;
		}
		rdp = req.getRequestDispatcher(destPage);
		rdp.forward(req, res);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

}
