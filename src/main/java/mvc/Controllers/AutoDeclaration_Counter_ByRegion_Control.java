package mvc.Controllers;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.Controllers.objects.DeclCount_Price;
import uz.target.DBCon;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "AutoDeclaration_Counter_ByRegion", value = "/autodecl_by_region")
public class AutoDeclaration_Counter_ByRegion_Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        Connection con = null;
        PreparedStatement psql;
        ResultSet res;
        PrintWriter out = resp.getWriter();
        ArrayList<DeclCount_Price> targetList = new ArrayList<DeclCount_Price>();
        try {
            String post_number = req.getParameter("post_number");
            String add_query = (post_number == null ? "" : " AND a.g29 = '" + post_number + "'\n");
            con = DBCon.getcon2_231(req);
            /*String query = "SELECT\n" +
                    "  CHAR(DATE(z.NAZQOYILGAN), EUR) AS date_c,\n" +
                    "  COUNT(DISTINCT z.UNCOD_ID) cnt\n" +
                    "FROM TEMP_XBT.ZANJIR z\n" +
                    "LEFT JOIN ETRANZIT.POST p ON z.NAZQOYILGANPOST = p.CODE AND p.LNGA_TPCD = 'UZ'\n" +
                    "WHERE DATE(z.NAZQOYILGAN) >= CURRENT_DATE - 7 DAY" + add_query + "\n" +
                    "GROUP BY CHAR(DATE(z.NAZQOYILGAN), EUR)\n" +
                    "ORDER BY date_c ASC";*/
            String query = "SELECT\n" +
                    "  t.datedecl,\n" +
                    "  t.qiymat/1000000,\n" +
                    "  (SELECT COUNT(a.id) FROM etranzit.autodecl a\n" +
                    "    WHERE DATE(a.instime) = DATE(t.datedecl)\n" +
                    "      AND a.state IN (180, 181, 182, 183, 184, 185, 188, 190, 191, 192)" + add_query + ") AS decl_count\n" +
                    "FROM (SELECT\n" +
                    "  DATE(a.updtime) AS datedecl,\n" +
                    "  SUM(c.g42)      AS qiymat\n" +
                    "  FROM etranzit.autodecl a\n" +
                    "  LEFT JOIN etranzit.commodity c ON c.autodecl_id = a.id\n" +
                    "  WHERE a.id IN (SELECT h.autodecl_id FROM etranzit.state_h h\n" +
                    "                 WHERE h.isdeleted = 0\n" +
                    "                   AND DATE(h.instime) >= CURRENT_DATE - 7 DAY\n" +
                    "                   AND h.state_cd = 180)\n" +
                    "    AND a.isdeleted = 0\n" +
                    "    AND c.isdeleted = 0 " + add_query +
                    " GROUP BY DATE(a.updtime)) AS t";
            psql = con.prepareStatement(query);
            psql.clearParameters();
            res = psql.executeQuery();
            while (res.next()) {
                targetList.add(new DeclCount_Price(
                        res.getString(1),
                        res.getInt(3),
                        res.getDouble(2)));
            }
            String JsonString = new Gson().toJson(targetList);
            JsonString = "{\"autodecl_by_region\":" + JsonString + "}";
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