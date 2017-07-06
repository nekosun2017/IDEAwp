import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.hzp.util.Database;

public class ActionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("dopost");
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
//获取参数
        String province=request.getParameter("province");
        System.out.println(province);
//查询数据库

        Database db=new Database();
        ResultSet rs=db.selectDB(province);
//组织JSON字符字面量
        StringBuffer info=new StringBuffer();
//JSON格式开始
        info.append("{province:[");
        try {
            while(rs.next()){
                System.out.println(rs.getString("city"));
                info.append("{city:'");
                info.append(rs.getString("city"));
                info.append("'},");
            }
//去掉最后那个逗号
            info.delete(info.length()-1,info.length());
//JSON格式结尾
            info.append("]}");
            rs.close();
            db.closeDB();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(info.toString());
//返回JSON给客户端
        out.print(info.toString());
        out.flush();
        out.close();
    }
}