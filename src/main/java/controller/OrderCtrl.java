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

import domain.OrderVO;
import service.OrderService;
import service.OrderServiceImpl;
import service.ProductService;
import service.ProductServiceImpl;

@WebServlet("/ord/*")
public class OrderCtrl extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(OrderCtrl.class);
	private RequestDispatcher rdp;
	private OrderService osv;
	private ProductService psv;
	
	private int isUp;
	private String destPage;

	public OrderCtrl() {
		osv = new OrderServiceImpl();
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
			
			case "register":
				req.setAttribute("pvo", psv.getDetail(Long.parseLong(req.getParameter("pno"))));
				destPage = "/order/register.jsp"; 
				break;
			case "insert" :
				isUp = osv.register(new OrderVO(Long.parseLong(req.getParameter("pno")),
										req.getParameter("orders"),
										req.getParameter("pname"),
										Double.parseDouble(req.getParameter("price")),
										req.getParameter("psize"),
										Integer.parseInt(req.getParameter("pcount")),
										req.getParameter("name"),
										req.getParameter("phone"),
										req.getParameter("address")));
				log.info(">>> insert > {}", isUp > 0 ? "Success":"Fail");
				destPage = "/";
				break;
			case "list" :
				req.setAttribute("list", osv.getList());
				destPage  = "/order/list.jsp";
				break;
			case "remove":
				isUp = osv.remove(Long.parseLong(req.getParameter("ono")));
				log.info(">>> OrderCtrl > Remove > {}", isUp > 0 ? "OK":"Fail");
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






















