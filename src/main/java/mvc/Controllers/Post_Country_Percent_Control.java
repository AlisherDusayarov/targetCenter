package mvc.Controllers;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.Controllers.objects.Post_Country_Percent;
import uz.target.DBCon;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "Post_Country_Percent", value = "/post_percent")
public class Post_Country_Percent_Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        Connection con = null;
        PreparedStatement psql;
        ResultSet res;
        PrintWriter out = resp.getWriter();
        ArrayList<Post_Country_Percent> targetList = new ArrayList<Post_Country_Percent>();
        try {
            String post_number = req.getParameter("post_number");
            String add_query = (post_number == null ? "" : " AND t.kiruvchi_post = '" + post_number + "'\n");
            con = DBCon.getcon2_231(req);
            int order = 0;
            String query = "SELECT * FROM\n" +
                    "(SELECT\n" +
                    "   n1.post_enter AS kiruvchi_post,\n" +
                    "   n1.name_post,\n" +
                    "   n1.name_country AS davlat,\n" +
                    "   n1.iso_country AS flag,\n" +
                    "   n1.soni,\n" +
                    "   n2.umumiy AS umumiysoni,\n" +
                    "   ROUND(FLOAT(n1.soni) * 100.00 / FLOAT(n2.umumiy), 3) AS foizi\n" +
                    " FROM (\n" +
                    "       SELECT\n" +
                    "         p.code AS post_enter,\n" +
                    "         p.cd_nm AS name_post,\n" +
                    "         c.cd_nm AS name_country,\n" +
                    "         c.cd_id_l AS iso_country,\n" +
                    "         COUNT(a.country_start) AS soni\n" +
                    "       FROM etranzit.post p\n" +
                    "       LEFT JOIN etranzit.autodecl a ON p.code = a.g29 AND a.isdeleted = 0\n" +
                    "       LEFT JOIN etranzit.country c ON c.code = a.country_start AND c.lnga_tpcd = 'UZ'\n" +
                    "       WHERE (a.state >= 160 AND a.state < 180) AND p.lnga_tpcd = 'UZ' AND p.use_yn = 'Y' AND p.cd_id_l = '3' AND a.t_cargo = 1 AND a.country_start <> '860'\n" +
                    "       GROUP BY c.cd_id_l, c.cd_nm, p.cd_nm, p.code) AS n1\n" +
                    " LEFT JOIN (\n" +
                    "            SELECT\n" +
                    "              p.code AS post_enter,\n" +
                    "              COUNT(a.country_start) AS umumiy\n" +
                    "            FROM etranzit.post p\n" +
                    "            LEFT JOIN etranzit.autodecl a ON p.code = a.g29 AND a.isdeleted = 0\n" +
                    "            WHERE a.state >= 180 AND p.lnga_tpcd = 'UZ' AND p.use_yn = 'Y' AND p.cd_id_l = '3' AND a.t_cargo = 1 AND a.country_start <>'860' AND DATE(a.instime) >= CURRENT_DATE - 6 MONTH\n" +
                    "            GROUP BY p.code) AS n2 ON n2.post_enter = n1.post_enter\n" +
                    " GROUP BY n2.umumiy, n1.soni, n1.iso_country, n1.name_country, n1.name_post, n1.post_enter) AS t\n" +
                    "WHERE t.soni <= 2 AND t.foizi < 1 " + add_query +
                    " ORDER BY t.foizi ASC";
            psql = con.prepareStatement(query);
            psql.clearParameters();
            res = psql.executeQuery();
            while (res.next()) {
                order++;
                targetList.add(new Post_Country_Percent(
                        order,
                        res.getString(1),
                        res.getString(2),
                        res.getString(3),
                        res.getString(4),
                        res.getInt(5),
                        res.getDouble(7)));
            }
            String JsonString = new Gson().toJson(targetList);
            JsonString = "{\"post_percent\":" + JsonString + "}";
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