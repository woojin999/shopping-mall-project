package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.CartVO;
import service.CartService;
import service.CartServiceImpl;
import service.ProductService;
import service.ProductServiceImpl;

@WebServlet("/crt/*")
public class CartCtrl extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(CartCtrl.class);
	private RequestDispatcher rdp;
	private CartService csv;
	
	private int isUp;
	private String destPage;

	public CartCtrl() {
		csv = new CartServiceImpl();
	}
	 protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			res.setCharacterEncoding("utf-8");
			res.setContentType("text/html; charset=utf-8");
			
			String uri = req.getRequestURI();
			String path = uri.substring(uri.lastIndexOf("/")+1);
			log.info(">>> path : " + path);
			
			switch (path) {
			
			
			case "insert" :
				isUp = csv.register(new CartVO(Long.parseLong(req.getParameter("pno")),
												req.getParameter("orders"),
												req.getParameter("pname"),
												Double.parseDouble(req.getParameter("price")),
												req.getParameter("psize"),
												Integer.parseInt(req.getParameter("pcount")),
												req.getParameter("email")));
				
				log.info(">>> insert > {}", isUp > 0 ? "Success":"Fail");
				destPage = "/";
				break;
			case "list" :
				req.setAttribute("list", csv.getList());
				destPage  = "/cart/list.jsp";
				break;
			case "remove":
				isUp = csv.remove(Long.parseLong(req.getParameter("cno")));
				log.info(">>> CartCtrl > Remove > {}", isUp > 0 ? "OK":"Fail");
				destPage = "list";
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






















