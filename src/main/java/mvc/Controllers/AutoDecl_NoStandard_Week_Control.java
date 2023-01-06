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

@WebServlet(name = "AutoDecl_NoStandard_Week", value = "/autodecl_nostandard_week")
public class AutoDecl_NoStandard_Week_Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        Connection con = null;
        PreparedStatement psql;
        ResultSet res;
        PrintWriter out = resp.getWriter();
        ArrayList<AutoDecl_NoStandatd> targetList = new ArrayList<AutoDecl_NoStandatd>();
        try {
            String post_number = req.getParameter("post_number");
            String add_query = (post_number == null ? "" : " AND ea.g29 = '" + post_number + "'\n");
            con = DBCon.getcon2_231(req);
            String query = "select\n" +
                    "  t.decl_time\n" +
                    "  ,count(case when t.ball8 is not null then t.id else null end) AS ball8\n" +
                    "  ,count(case when t.ball9 is not null then t.id else null end) AS ball9\n" +
                    "  ,count(case when t.ball10 is not null then t.id else null end) AS ball10\n" +
                    "  ,count(case when t.ball14 is not null then t.id else null end) AS ball14\n" +
                    "  ,count(case when t.ball17 is not null then t.id else null end) AS ball17\n" +
                    "  ,count(case when t.ball27 is not null then t.id else null end) AS ball27\n" +
                    "from(select distinct\n" +
                    "       ea.ID\n" +
                    "       --, ea.G29 enter_post\n" +
                    "       --, ea.UNCOD_ID\n" +
                    "       , CHAR(DATE(ea.INSTIME), EUR) AS decl_time\n" +
                    "       , mnz14.BALL ball14\n" +
                    "       , mnz8.BALL ball8\n" +
                    "       , mnz9.BALL ball9\n" +
                    "       , mnz10.BALL ball10\n" +
                    "       , mnz17.BALL ball17\n" +
                    "       , mnz27.BALL ball27\n" +
                    "     from XBT_etran.TMPLT_RST xyt\n" +
                    "     join etranzit.autodecl ea on xyt.DOC_ID = ea.ID\n" +
                    "     join XBT_ETRAN.TMPLT_RST_WY xytrw on xyt.DOC_ID = xytrw.DOC_ID\n" +
                    "     join etranzit.state st on st.code = ea.state\n" +
                    "     left join (select ch.DOC_ID, mz.TMPLT_NUM, ch.BALL from XBT_ETRAN.TMPLT_RST ch join XBT_ETRAN.TMPLT_MN mz on mz.TMPLT_ID=ch.TMPLT_ID where ch.DOC_TYPE=6 and mz.TMPLT_NUM=8) mnz8 on mnz8.DOC_ID=ea.id\n" +
                    "     left join (select ch.DOC_ID, mz.TMPLT_NUM, ch.BALL from XBT_ETRAN.TMPLT_RST ch join XBT_ETRAN.TMPLT_MN mz on mz.TMPLT_ID=ch.TMPLT_ID where ch.DOC_TYPE=6 and mz.TMPLT_NUM=9) mnz9 on mnz9.DOC_ID=ea.id\n" +
                    "     left join (select ch.DOC_ID, mz.TMPLT_NUM, ch.BALL from XBT_ETRAN.TMPLT_RST ch join XBT_ETRAN.TMPLT_MN mz on mz.TMPLT_ID=ch.TMPLT_ID where ch.DOC_TYPE=6 and mz.TMPLT_NUM=10) mnz10 on mnz10.DOC_ID=ea.id\n" +
                    "     left join (select ch.DOC_ID, mz.TMPLT_NUM, ch.BALL from XBT_ETRAN.TMPLT_RST ch join XBT_ETRAN.TMPLT_MN mz on mz.TMPLT_ID=ch.TMPLT_ID where ch.DOC_TYPE=6 and mz.TMPLT_NUM=14) mnz14 on mnz14.DOC_ID=ea.id\n" +
                    "     left join (select ch.DOC_ID, mz.TMPLT_NUM, ch.BALL from XBT_ETRAN.TMPLT_RST ch join XBT_ETRAN.TMPLT_MN mz on mz.TMPLT_ID=ch.TMPLT_ID where ch.DOC_TYPE=6 and mz.TMPLT_NUM=17) mnz17 on mnz17.DOC_ID=ea.id\n" +
                    "     left join (select ch.DOC_ID, mz.TMPLT_NUM, ch.BALL from XBT_ETRAN.TMPLT_RST ch join XBT_ETRAN.TMPLT_MN mz on mz.TMPLT_ID=ch.TMPLT_ID where ch.DOC_TYPE=6 and mz.TMPLT_NUM=27) mnz27 on mnz27.DOC_ID=ea.id\n" +
                    "     where (ea.STATE >= 160 and ea.state < 180) and st.lnga_tpcd = 'UZ' and ea.INSTIME > CURRENT_TIMESTAMP - 7 day) AS t\n" +
                    "group by t.decl_time\n" +
                    "order by DATE(t.decl_time) ASC";
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
            String JsonString = new Gson().toJson(targetList);
            JsonString = "{\"autodecl_nostandard_week\":" + JsonString + "}";
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