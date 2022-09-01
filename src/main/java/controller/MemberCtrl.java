package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import service.MemberService;
import service.MemberServiceImpl;
@WebServlet("/mem/*")
public class MemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(MemberCtrl.class);
	private RequestDispatcher rdp;
	private MemberService msv;
	private int isUp;
	private String destPage;
	
    public MemberCtrl() {
    	msv = new MemberServiceImpl();
    }
    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> path : " + path);
		
		switch (path) {
		
		case "login":
			destPage = "/member/login.jsp";
			break;
		case "login_auth":
			MemberVO mvo 
				= msv.login(new MemberVO(
						req.getParameter("email"),req.getParameter("pwd")));
			if(mvo != null) {
				HttpSession ses = req.getSession();
				ses.setAttribute("ses", mvo);
				ses.setMaxInactiveInterval(600); 
			}else {
				req.setAttribute("msg_login", 0);
			}
			destPage = "/";
			break;
		case "logout":
			HttpSession ses = req.getSession();
			ses.invalidate();
			isUp = msv.lastLogin(req.getParameter("email"));
			req.setAttribute("msg_logout", 1);
			destPage = "/";
			break;
		case "join":
			destPage = "/member/join.jsp";
			break;
		case "register":
			isUp = msv.register(new MemberVO(req.getParameter("email"),
					req.getParameter("pwd"),
											req.getParameter("name"),
											req.getParameter("phone"),
											req.getParameter("address")));
			req.setAttribute("msg_join", isUp);
			destPage = "/";
			break;
		case "list":		
			req.setAttribute("list", msv.getList());
			destPage = "/member/list.jsp";
			break;
		case "modify":
			req.setAttribute("mvo", msv.getDetail(req.getParameter("email")));
			destPage = "/member/modify.jsp";
			break;
		case "update":
			isUp = msv.modify(new MemberVO(req.getParameter("email"),
										req.getParameter("pwd"),
										req.getParameter("name"),
										req.getParameter("phone"),
										req.getParameter("address")));
			log.info(">>> Modify > {}", isUp > 0 ? "Success":"Fail");
			req.setAttribute("msg_mod", isUp);
			destPage = "/";
			break;
		case "remove":
			int isUp = msv.remove(req.getParameter("email"));
			log.info(">>> Remove > {}", isUp > 0 ? "Success":"Fail");
			destPage = "/";
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


























