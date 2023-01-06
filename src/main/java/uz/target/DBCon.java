package uz.target;

import jakarta.servlet.http.HttpServletRequest;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
    public static Connection conASOD;
    public static Connection con2_231;
    public static Connection con99;
    public static Connection con225;
    public static Connection con226;
    public static Connection con227;
    public static Connection con228;
    public static Connection con229;
    public static Connection con231;
    private static String strUser = "DASHBO11";
    private static String strPwd = "D@$hb0";
    private static String ClassforName = "com.ibm.as400.access.AS400JDBCDriver";

    public static Connection getConASOD(HttpServletRequest request) throws Exception {
        String strDB = "192.168.12.144";
        //String strUrl = "jdbc:as400:" + strDB + "/asod;date format=iso;naming=sql";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        //strUser = "DASHBO11";
        if (request.getSession().getAttribute("conASOD") == null) {
            Class.forName(ClassforName).newInstance();
            conASOD = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("conASOD", conASOD);
        } else {
            conASOD = (Connection) request.getSession().getAttribute("conASOD");
            if (conASOD.isClosed()) {
                Class.forName(ClassforName).newInstance();
                conASOD = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("conASOD", conASOD);
            }
        }
        return conASOD;
    }

    public static Connection getCon228(HttpServletRequest request) throws Exception {
        String strDB = "192.168.212.228";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        if (request.getSession().getAttribute("con228") == null) {
            Class.forName(ClassforName).newInstance();
            con228 = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("con228", con228);
        } else {
            con228 = (Connection) request.getSession().getAttribute("con228");
            if (con228.isClosed()) {
                Class.forName(ClassforName).newInstance();
                con228 = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("con228", con228);
            }
        }
        return con228;
    }

    public static Connection getCon231(HttpServletRequest request) throws Exception {
        String strDB = "192.168.12.231";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        if (request.getSession().getAttribute("con231") == null) {
            Class.forName(ClassforName).newInstance();
            con231 = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("con231", con231);
        } else {
            con231 = (Connection) request.getSession().getAttribute("con231");
            if (con231.isClosed()) {
                Class.forName(ClassforName).newInstance();
                con231 = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("con231", con231);
            }
        }
        return con231;
    }

    public static Connection getCon225(HttpServletRequest request) throws Exception {
        String strDB = "192.168.212.225";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        if (request.getSession().getAttribute("con225") == null) {
            Class.forName(ClassforName).newInstance();
            con225 = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("con225", con225);
        } else {
            con225 = (Connection) request.getSession().getAttribute("con225");
            if (con225.isClosed()) {
                Class.forName(ClassforName).newInstance();
                con225 = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("con225", con225);
            }
        }
        return con225;
    }

    public static Connection getCon226(HttpServletRequest request) throws Exception {
        String strDB = "192.168.212.226";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        if (request.getSession().getAttribute("con226") == null) {
            Class.forName(ClassforName).newInstance();
            con226 = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("con226", con226);
        } else {
            con226 = (Connection) request.getSession().getAttribute("con226");
            if (con226.isClosed()) {
                Class.forName(ClassforName).newInstance();
                con226 = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("con226", con226);
            }
        }
        return con226;
    }

    public static Connection getCon227(HttpServletRequest request) throws Exception {
        String strDB = "192.168.212.227";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        if (request.getSession().getAttribute("con227") == null) {
            Class.forName(ClassforName).newInstance();
            con227 = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("con227", con227);
        } else {
            con227 = (Connection) request.getSession().getAttribute("con227");
            if (con227.isClosed()) {
                Class.forName(ClassforName).newInstance();
                con227 = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("con227", con227);
            }
        }
        return con227;
    }

    public static Connection getCon99(HttpServletRequest request) throws Exception {
        String strDB = "192.168.212.99";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        if (request.getSession().getAttribute("con99") == null) {
            Class.forName(ClassforName).newInstance();
            con99 = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("con99", con99);
        } else {
            con99 = (Connection) request.getSession().getAttribute("con99");
            if (con99.isClosed()) {
                Class.forName(ClassforName).newInstance();
                con99 = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("con99", con99);
            }
        }
        return con99;
    }

    public static Connection getCon229(HttpServletRequest request) throws Exception {
        String strDB = "192.168.212.229";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        if (request.getSession().getAttribute("con229") == null) {
            Class.forName(ClassforName);
            con229 = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("con229", con229);
        } else {
            con229 = (Connection) request.getSession().getAttribute("con229");
            if (con229.isClosed()) {
                Class.forName(ClassforName);
                con229 = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("con229", con229);
            }
        }
        return con229;
    }

    public static Connection getcon2_231(HttpServletRequest request) throws Exception {
        String strDB = "192.168.212.231";
        String strUrl = "jdbc:as400:" + strDB + ";date format=iso;naming=sql";
        if (request.getSession().getAttribute("con2_231") == null) {
            Class.forName(ClassforName).newInstance();
            con2_231 = DriverManager.getConnection(strUrl, strUser, strPwd);
            request.getSession().setAttribute("con2_231", con2_231);
        } else {
            con2_231 = (Connection) request.getSession().getAttribute("con2_231");
            if (con2_231.isClosed()) {
                Class.forName(ClassforName).newInstance();
                con2_231 = DriverManager.getConnection(strUrl, strUser, strPwd);
                request.getSession().setAttribute("con2_231", con2_231);
            }
        }
        return con2_231;
    }
}
