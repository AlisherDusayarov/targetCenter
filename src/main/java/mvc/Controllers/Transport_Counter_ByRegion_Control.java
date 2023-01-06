package mvc.Controllers;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.Controllers.objects.Diagram_Date;
import uz.target.DBCon;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "Transport_Counter_ByRegion", value = "/transport_by_region")
public class Transport_Counter_ByRegion_Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        Connection con = null;
        PreparedStatement psql;
        ResultSet res;
        PrintWriter out = resp.getWriter();
        ArrayList<Diagram_Date> targetList = new ArrayList<Diagram_Date>();
        try {
            String post_number = req.getParameter("post_number");
            String add_query = (post_number == null ? "" : " AND b.post = '" + post_number + "'");
            con = DBCon.getCon229(req);
            String query = "SELECT\n" +
                    "  CHAR(DATE(b.dofr), EUR) AS date_c,\n" +
                    "  COUNT(*) AS cnt\n" +
                    "FROM kkdg.book11 b\n" +
                    "--join kkdg.post2 p on b.post = p.id and p.country is not null\n" +
                    "--left join kkdg.sp_reg s on s.id = substr(b.post, 1, 2)\n" +
                    "--left join kkdg.punkt pn on b.post = pn.kod_post and b.punkt = pn.kod_punkt\n" +
                    "WHERE b.checkintime IS NOT NULL AND DATE(b.dofr) >= CURRENT_DATE - 7 DAY " + add_query + "\n" +
                    "GROUP BY CHAR(DATE(b.dofr), EUR)\n" +
                    "ORDER BY date_c ASC";
            psql = con.prepareStatement(query);
            psql.clearParameters();
            res = psql.executeQuery();
            while (res.next()) {
                targetList.add(new Diagram_Date(
                        res.getString(1),
                        res.getInt(2)));
            }
            String JsonString = new Gson().toJson(targetList);
            JsonString = "{\"transport_by_region\":" + JsonString + "}";
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