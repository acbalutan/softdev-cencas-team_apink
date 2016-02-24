package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import static bean.Provider.*;

public class Tapat {
    public static void main(String[] args) throws Exception {
        Class.forName(DRIVER);
        Connection conn = DriverManager.getConnection(CONNECTION_URL);
        Statement stat = conn.createStatement();
        stat.executeUpdate("drop table if exists tapat;");
        stat.executeUpdate("create table tapat (candidacy,name,vote,level,precinct,city,district,province,region,ip,mac,latitude,longitude,date,time);");
        PreparedStatement prep = conn.prepareStatement(
            "insert into tapat values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
        
        prep.setString(1, "President");
        prep.setString(2, "Jejomar Binay");
        prep.setString(3, "94");
        prep.setString(4, "Precinct");
        prep.setString(5, "1");
        prep.setString(6, "23");
        prep.setString(7, "14");
        prep.setString(8, "12");
        prep.setString(9, "13");
        prep.setString(10, "192.168.2.221");
        prep.setString(11, "T73-22-B80-GG12-K2");
        prep.setString(12, "14.554729000000002");
        prep.setString(13, "121.02444519999999");
        prep.setString(14, "01/05/2016");
        prep.setString(15, "13:30:00");
        prep.addBatch();

        conn.setAutoCommit(false);
        prep.executeBatch();
        conn.setAutoCommit(true);

        ResultSet rs = stat.executeQuery("select * from tapat;");
        while (rs.next()) {
//            System.out.println("asd = " + rs.getString("candidacy"));
//            System.out.println("asd = " + rs.getString("name"));
//            System.out.println("asd = " + rs.getString("vote"));
//            System.out.println("asd = " + rs.getString("level"));
//            System.out.println("asd = " + rs.getString("precinct"));
        }
        rs.close();
        conn.close();
    }
  }