package mvc.Controllers;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.Controllers.objects.Region_Info;
import uz.target.DBCon;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "Region_Info_Control", value = "/region_info")
public class Region_Info_Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        Connection con = null;
        PreparedStatement psql;
        ResultSet res;
        PrintWriter out = resp.getWriter();
        ArrayList<Region_Info> targetList = new ArrayList<Region_Info>();
        int common_employee = 0, worked_employee = 0;
        try {
            String post_number = req.getParameter("post_number");
            String add_query = (post_number == null ? "" : " AND b.post = '" + post_number + "'");
            con = DBCon.getCon226(req);
            String query = "SELECT\n" +
                    "  SUM(sht_son) AS sht_son,\n" +
                    "  SUM(CASE WHEN i.kim IS NOT NULL THEN i.sht_son ELSE NULL END) AS jamlangan,\n" +
                    "  SUM(CASE WHEN i.kim IS NULL THEN i.sht_son ELSE NULL END) AS vakant\n" +
                    "FROM ekadr.shtat_istory i\n" +
                    "JOIN ekadr.shtatka_new w ON w.id = i.lav_id AND w.boshqarma_kod = ?";
            psql = con.prepareStatement(query);
            psql.clearParameters();
            psql.setString(1, post_number);
            res = psql.executeQuery();
            while (res.next()) {
                common_employee = res.getInt("sht_son");
                worked_employee = res.getInt("jamlangan");
            }
            con = DBCon.getcon2_231(req);
            query = "SELECT DISTINCT\n" +
                    "  r.num_reys,\n" +
                    "  r.time_otp_aerport,\n" +
                    "  r.name_otp_aerport,\n" +
                    "  r.time_pol_aerport,\n" +
                    "  r.name_pol_aerport,\n" +
                    "  p.ism_fam,\n" +
                    "  p.passport,\n" +
                    "  p.millat,\n" +
                    "  CHAR(p.tugilgan_kun, EUR) AS tugilgan_kun,\n" +
                    "  m.name\n" +
                    "FROM avia_all.airports a\n" +
                    "LEFT JOIN avia_all.all_reys r ON (r.kod_otp_aerport = a.shortname OR r.kod_pol_aerport = a.shortname)\n" +
                    "LEFT JOIN avia_all.all_psg p ON p.id_all_reys = r.id\n" +
                    "LEFT JOIN (SELECT w.doc_id FROM xbt_ybd.tmplt_rst_wy w\n" +
                    "        WHERE w.chanel_way = 4 AND NOT EXISTS (SELECT c.doc_id FROM xbt_ybd.tmplt_chck c\n" +
                    "                WHERE c.doc_id = w.doc_id)) AS w2 ON w2.doc_id = p.id\n" +
                    "LEFT JOIN xbt_ybd.tmplt_rst_wy xb ON xb.doc_id = w2.doc_id\n" +
                    "LEFT JOIN avia_all.check_psg_inspec ins ON (ins.flight_id = r.id AND ins.psgr_id = w2.doc_id)\n" +
                    "LEFT JOIN avia_all.mobileapp m ON m.user_id = ins.id_inspector\n" +
                    "WHERE a.active = 1\n" +
                    "  AND (p.ism_fam IS NOT NULL OR (p.passport IS NOT NULL AND p.tugilgan_kun IS NOT NULL))\n" +
                    "  AND r.isdeleted = 0\n" +
                    "  AND (DATE(r.time_otp_aerport) >= CURRENT_DATE - 1 DAY AND DATE(r.time_pol_aerport) <= CURRENT_DATE - 1 DAY)\n" +
                    "  AND xb.chanel_way = 4\n" +
                    "  AND a.post = ?\n";
            psql = con.prepareStatement(query);
            psql.clearParameters();
            psql.setString(1, post_number);
            res = psql.executeQuery();
            while (res.next()) {
                targetList.add(new Region_Info(
                        res.getString(1),
                        common_employee,
                        worked_employee,
                        res.getString(3),
                        res.getString(4),
                        res.getString(5)));
            }
            String JsonString = new Gson().toJson(targetList);
            JsonString = "{\"region_info\":" + JsonString + "}";
            System.out.println("  Border_Control_JSON ------>>   " + query);
            out.print(JsonString);
            out.flush();
            res.close();
            /*No_Action_SendInfo data_send = new No_Action_SendInfo(passenger_count, passenger_count, targetList);
            sendAsJson(resp, data_send);*/
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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    /*private void sendAsJson(HttpServletResponse response, No_Action_SendInfo obj) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String result = new Gson().toJson(obj);
        System.out.println(" No_Action_Report_JSON  -->>  " + result);
        out.print(result);
        out.flush();
    }*/
}