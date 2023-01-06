package mvc.Controllers;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.Controllers.objects.AutoDecl_NoStandatd;
import uz.target.DBCon;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "AutoDecl_Modals", value = "/autodecl_modal")
public class AutoDecl_Modals_Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        Connection con = null;
        PreparedStatement psql = null;
        ResultSet res = null;
        PrintWriter out = resp.getWriter();
        ArrayList<AutoDecl_NoStandatd> targetList = new ArrayList<AutoDecl_NoStandatd>();
        try {
            String parameter = req.getParameter("parameter");
            String post_number = req.getParameter("post_number");
            String add_query = (post_number == null ? "" : " AND ea.g29 = '" + post_number + "'\n");
            String query = "", JsonString = "";
            con = DBCon.getcon2_231(req);
            if (parameter.equals("10")) {
                query = "323232323232";
                psql = con.prepareStatement(query);
                psql.clearParameters();
                res = psql.executeQuery();
                while (res.next()) {
                    targetList.add(new AutoDecl_NoStandatd(
                            res.getString(1),
                            res.getInt(2),
                            res.getInt(3),
                            res.getInt(4),
                            res.getInt(5),
                            res.getInt(6),
                            res.getInt(7)));
                }
                JsonString = new Gson().toJson(targetList);
                JsonString = "{\"autodecl_modal\":" + JsonString + "}";
                System.out.println(JsonString);
            }
            out.print(JsonString);
            out.flush();
            res.close();
            res.close();
            psql.close();
        } catch (Exception e) {
            try {
                assert con != null;
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { }

    @Override
    public void destroy() { super.destroy(); }
}