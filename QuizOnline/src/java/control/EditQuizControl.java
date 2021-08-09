package control;

import dao.loadDAO;
import entity.Quiz;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ducanh
 */
@WebServlet(name = "EditQuizControl", urlPatterns = {"/edit-quiz"})
public class EditQuizControl extends HttpServlet {

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request.getRequestDispatcher("EditQuizPage.jsp").forward(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			String question = request.getParameter("question");
			String option1 = request.getParameter("option1");
			String option2 = request.getParameter("option2");
			String option3 = request.getParameter("option3");
			String option4 = request.getParameter("option4");
			String answers[] = request.getParameterValues("answer"); //2,3,4
			String myanswer = "";
			for (String str : answers) {
				myanswer += str + " ";
			}
			myanswer = myanswer.substring(0, myanswer.length() - 1);
			Date now = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String date = df.format(now);

			String sid = request.getParameter("qid");
			int id = Integer.parseInt(sid);
			loadDAO dao = new loadDAO();

			HttpSession session = request.getSession();
			User u = (User) session.getAttribute("user");
			int uid = u.getId();
			
			dao.editQuiz(question, option1, option2, option3, option4, myanswer, date, uid, id);
			
            List<Quiz> list = dao.getListByUser(uid);
            request.setAttribute("listQuiz", list);
            request.setAttribute("numOfQuestion", list.size());
            request.getRequestDispatcher("ManagementQuizPage.jsp").forward(request, response);
		} catch (Exception e) {
			response.sendRedirect("manage-quiz");			
		}
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
