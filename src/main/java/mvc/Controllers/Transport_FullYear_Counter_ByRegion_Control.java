package mvc.Controllers;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.Controllers.objects.Transport_Year;
import uz.target.DBCon;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "Transport_FullYear_Counter_ByRegion", value = "/transport_fullyear_by_region")
public class Transport_FullYear_Counter_ByRegion_Control extends HttpServlet {
    public static String[] Month_name = {"Янв", "Фев", "Март", "Апр", "Май", "Июн", "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек"};
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        Connection con = null;
        PreparedStatement psql;
        ResultSet res;
        PrintWriter out = resp.getWriter();
        ArrayList<Transport_Year> targetList = new ArrayList<Transport_Year>();
        try {
            String post_number = req.getParameter("post_number");
            String add_query = (post_number == null ? "" : " AND b.post = '" + post_number + "'");
            con = DBCon.getCon229(req);
            String query = "SELECT\n" +
                    "  SUBSTR(VARCHAR(b.dofr), 0, 8) AS date_c,\n" +
                    "  COUNT(CASE WHEN b.tip NOT LIKE '1%' OR b.tip IS NULL THEN b.post ELSE NULL END) AS cnt_yuk,\n" +
                    "  COUNT(CASE WHEN b.porojnya = 0 AND (b.tip NOT LIKE '1%' or b.tip IS NULL) THEN b.post ELSE NULL END) AS cnt_empty,\n" +
                    "  COUNT(CASE WHEN b.tip LIKE '1%' THEN b.post ELSE NULL END) AS cnt_engl\n" +
                    "FROM kkdg.book11 b\n" +
                    "--join kkdg.post2 p on b.post = p.id and p.country is not null\n" +
                    "--left join kkdg.sp_reg s on s.id = SUBSTR(b.post, 1, 2)\n" +
                    "--left join kkdg.punkt pn on b.post = pn.kod_post and b.punkt = pn.kod_punkt\n" +
                    "WHERE b.checkintime IS NOT NULL AND DATE(b.dofr) >= '01'||SUBSTR(CHAR(CURRENT_DATE - 1 YEAR, EUR), 3, 10)" + add_query + "\n" +
                    "GROUP BY SUBSTR(VARCHAR(b.dofr), 0, 8)\n" +
                    "ORDER BY date_c ASC";
            psql = con.prepareStatement(query);
            psql.clearParameters();
            res = psql.executeQuery();
            while (res.next()) {
                targetList.add(new Transport_Year(
                        Month_name[Integer.parseInt(res.getString(1).substring(5, 7)) - 1],
                        res.getInt(2),
                        res.getInt(3),
                        res.getInt(4)));
            }
            String JsonString = new Gson().toJson(targetList);
            JsonString = "{\"transport_fullyear_by_region\":" + JsonString + "}";
            System.out.println(JsonString);
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