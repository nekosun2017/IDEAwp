
//专门查询申请会议室界面的下拉列表框的数据的类 和对应的会议室详情
class ClassImpl{

    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
    public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password=" ;
    Connection conn = null ;
    PreparedStatement pstmt = null ;
    ResultSet rs = null ;

    String roomid;
    String detial;


}