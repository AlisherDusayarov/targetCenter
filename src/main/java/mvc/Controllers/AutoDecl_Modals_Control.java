package mvc.Controllers;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.Controllers.objects.Object_Modals;
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
        ArrayList<Object_Modals> targetList = new ArrayList<Object_Modals>();
        try {
            String parameter = req.getParameter("parameter");
            String post_number = req.getParameter("post_number");
            String add_query = (post_number == null ? "" : " AND ea.g29 = '" + post_number + "'\n");
            String query = "", JsonString = "";
            int order = 0;
            con = DBCon.getcon2_231(req);
            if (parameter.equals("10")) {
                query = "select\n" +
                        "  t.id\n" +
                        "  , t.enter_post\n" +
                        "  , t.weight_type\n" +
                        "  , t.UNCOD_ID\n" +
                        "  , t.start_country\n" +
                        "  , t.end_country\n" +
                        "  , t.CHANEL_WAY\n" +
                        "  , t.auto_number\n" +
                        "  , xmlserialize(xmlagg(xmlconcat(xmltext(t.digits6_name), xmltext(', '))) AS VARCHAR(2500)) AS tovarlar\n" +
                        "  , t.ball10\n" +
                        "from\n" +
                        "(select distinct\n" +
                        "  ea.id\n" +
                        "  , p.cd_nm AS enter_post\n" +
                        "  --, ea.T_TYPE AS car_type\n" +
                        "  , case when ea.T_CARGO = 1 then 'yukli' else 'yuksiz' end AS weight_type\n" +
                        "  , ea.UNCOD_ID\n" +
                        "  , ct1.cd_desc AS start_country\n" +
                        "  , ct2.cd_desc AS end_country\n" +
                        "  , CASE WHEN xytrw.CHANEL_WAY = 1 THEN 'Яшил' WHEN xytrw.CHANEL_WAY = 3 THEN 'Сариқ' ELSE 'Қизил' END AS CHANEL_WAY\n" +
                        "  , et.g21no AS auto_number\n" +
                        "  , c.digits6_name\n" +
                        "  , mnz10.BALL AS ball10\n" +
                        "from etranzit.autodecl ea\n" +
                        "join XBT_etran.TMPLT_RST xyt on xyt.DOC_ID = ea.id\n" +
                        "join XBT_ETRAN.TMPLT_RST_WY xytrw on xytrw.DOC_ID = xyt.DOC_ID\n" +
                        "left join etranzit.post p on p.code = ea.g29 and p.lnga_tpcd = 'UZ'\n" +
                        "left join etranzit.country ct1 on ct1.code = ea.COUNTRY_START and ct1.lnga_tpcd = 'UZ'\n" +
                        "left join etranzit.country ct2 on ct2.code = ea.COUNTRY_END and ct2.lnga_tpcd = 'UZ'\n" +
                        "left join etranzit.transport et on et.AUTODECL_ID = ea.id\n" +
                        "left join etranzit.commodity c on c.AUTODECL_ID = ea.id\n" +
                        "join etranzit.state st on st.code = ea.state\n" +
                        "left join (select ch.DOC_ID, mz.TMPLT_NUM, ch.BALL from XBT_ETRAN.TMPLT_RST ch join XBT_ETRAN.TMPLT_MN mz on mz.TMPLT_ID=ch.TMPLT_ID where ch.DOC_TYPE=6 and mz.TMPLT_NUM=10) mnz10 on mnz10.DOC_ID=ea.id\n" +
                        "where (ea.STATE >= 160 and ea.state < 180) and st.lnga_tpcd = 'UZ' and mnz10.BALL is not null and DATE(ea.INSTIME) = CURRENT_DATE) AS t\n" +
                        "group by t.ball10\n" +
                        "  ,t.auto_number\n" +
                        "  ,t.CHANEL_WAY\n" +
                        "  ,t.end_country\n" +
                        "  ,t.start_country\n" +
                        "  ,t.UNCOD_ID\n" +
                        "  ,t.weight_type\n" +
                        "  ,t.enter_post\n" +
                        "  ,t.id";
                psql = con.prepareStatement(query);
                psql.clearParameters();
                res = psql.executeQuery();
                while (res.next()) {
                    order++;
                    targetList.add(new Object_Modals(
                            order,
                            res.getString(2),
                            res.getString(4),
                            res.getString(5),
                            res.getString(6),
                            res.getString(7),
                            res.getString(8),
                            res.getString(9)));
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