package logIn;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.Statement;

import java.io.IOException;
import loginDao.loginDao;
import control.DBConnection;

/**
 * Servlet implementation class logIn
 */
@WebServlet(name = "logIn", urlPatterns = {"/logIn"})
public class logIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logIn() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("union");
		String pass = request.getParameter("pass");

		
		try {
        // Static getInstance method is called with hashing MD5
        MessageDigest md = MessageDigest.getInstance("MD5");

        // digest() method is called to calculate message digest
        //  of an input digest() return array of byte
        byte[] messageDigest = md.digest(pass.getBytes());

        // Convert byte array into signum representation
        BigInteger no = new BigInteger(1, messageDigest);

        // Convert message digest into hex value
        String hashtext = no.toString(16);
        while (hashtext.length() < 32) {
            hashtext = "0" + hashtext;
        }
		
		loginDao dao = new loginDao();
		HttpSession session = request.getSession(false);
		
		String position="";
		String union="";
		String branch="";
		
		String sql = "select * from login where name='"+name+"' and password='"+hashtext+"' and status='Active'";
		Connection con=DBConnection.getConnection();
		java.sql.Statement st = con.createStatement();
		ResultSet rst = st.executeQuery(sql);
		while(rst.next()) {
			position = rst.getString("position");
			union =rst.getString("unions");
			branch =rst.getString("branch");
		}
		
       if(dao.check(name, hashtext)) {
			
			if(position.equals("admin")) {
			session.setAttribute("position", position);
			response.sendRedirect("adminDashboard.jsp");
			
			}else if(position.equals("Union Manager")){
				session.setAttribute("union", union);
				session.setAttribute("branch", branch);
				session.setAttribute("position", position);
				response.sendRedirect("unionDashboard.jsp");
				
			}else if(position.equals("Branch Manager")) {
				session.setAttribute("union", union);
				session.setAttribute("branch", branch);
				session.setAttribute("position", position);
				response.sendRedirect("BranchDashboard.jsp");
				
			}else if(position.equals("Field Staff")) {
				
				session.setAttribute("union", union);
				session.setAttribute("branch", branch);
				session.setAttribute("position", position);
				response.sendRedirect("trips.jsp");
				
			}
		}
		
		else {
			System.out.println("Branch logging in .........////////////\\\\\\\\\\ "+branch);
			
			response.sendRedirect("index.jsp");
		}
	}catch(Exception e) {
		System.out.println(e);
		}
	}
}
