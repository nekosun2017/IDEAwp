package main.java.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by sun on 2017/5/15.
 */
public class text {


    private  static final String driver = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost:3306/meetingdate";//定义链接
    private static final String db_name = "root";   //MYSQL账号
    private static final String db_pass = "123";   //MYSQL密码

    public static void main(String[] args) {
     System.out.print(getConn().toString());
    }

    public static Connection getConn() {
        Connection con = null;  //定义空的连接
        try {
            Class.forName(driver); //注册驱动
            con = DriverManager.getConnection(url, db_name, db_pass);  //获取连接，赋值给con
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con; //返回获取的连接

    }
}