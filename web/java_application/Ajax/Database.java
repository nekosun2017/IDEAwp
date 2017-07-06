import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Database {
    private Connection conn=null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password=" ;
    public Database(){
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            this.conn=DriverManager.getConnection(this.URL);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public ResultSet selectDB(String province){
        String sql="select * from address where province=?";
        try {
            pstmt = this.conn.prepareStatement(sql);
            pstmt.setString(1,province);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }
    public void closeDB() {
        try {
            if (rs != null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
