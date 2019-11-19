//package bootsample.servlet;
//import bootsample.model.Account;
//import bootsample.service.AccountService;
//
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/list")
//public class ListServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        listAccount(request, response);
//    }
//
//    private void listAccount(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        AccountService service = new AccountService();
//
//        try {
//
//            List<Account> listAccount = service.list();
//            request.setAttribute("listAccount, listAccount);
//
//            RequestDispatcher dispatcher = request.getRequestDispatcher("transaksi.jsp");
//            dispatcher.forward(request, response);
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//            throw new ServletException(e);
//        }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        int norek = Integer.parseInt(request.getParameter("account"));
//
//        request.setAttribute("account", norek);
//
//        listAccount(request, response);
//    }
//}
