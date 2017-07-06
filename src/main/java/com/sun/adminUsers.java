package main.java.com.sun;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import  main.java.bean.User;

/**
 * Created by Maibenben on 2017/4/25.
 */
@WebServlet(name = "adminUsers")
public class adminUsers extends HttpServlet {
    private static Connection connection;
    private Statement statement;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action =  request.getParameter("action");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mydb?user=root&password=";
            connection = DriverManager.getConnection(url);
            statement = connection.createStatement();

        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
        if (action == "" ||action.equals(null) || action ==null){

        } else {
            try {
                if (action.equals("find")) {
                    String name = request.getParameter("username");
                    String sql = "SELECT id,c_username,c_password,information,allow FROM t_user where c_username like '%"+name+"%'";
                    ResultSet rs = statement.executeQuery(sql);
                    List<User> users = new ArrayList<>();
                    while (rs.next()) {
                        User user = new User();
                        user.setId(rs.getInt("id"));
                        user.setName(rs.getString("c_username"));
                        user.setPassword(rs.getString("c_password"));
                        user.setInformation(rs.getString("information"));
                        user.setAllow(rs.getInt("allow"));
                        users.add(user);
                    }
                    request.setAttribute("users", users);
                    rs.close();
                } else if (action.equals("edit")) {
                    int id = Integer.parseInt(request.getParameter("id"));
                    String name = request.getParameter("name");
                    String password = request.getParameter("password");
                    String information = request.getParameter("information");
                    int allow = Integer.parseInt(request.getParameter("allow"));
                    PreparedStatement ps ;
                    String sql = "update t_user set c_username=? where id=?";
                    ps = connection.prepareStatement(sql);
                    ps.setString(1,name);
                    ps.setInt(2,id);
                    ps.executeUpdate();
                    String sql2 = "update t_user set c_password=? where id=?";
                    ps = connection.prepareStatement(sql2);
                    ps.setString(1,password);
                    ps.setInt(2,id);
                    ps.executeUpdate();
                    String sql3 = "update t_user set information=? where id=?";
                    ps = connection.prepareStatement(sql3);
                    ps.setString(1,information);
                    ps.setInt(2,id);
                    ps.executeUpdate();
                    String sql4 = "update t_user set allow=? where id=?";
                    ps = connection.prepareStatement(sql4);
                    ps.setInt(1,allow);
                    ps.setInt(2,id);
                    ps.executeUpdate();
                    ps.close();
                }
                statement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        request.getRequestDispatcher("adminUsers.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
