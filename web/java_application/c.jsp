<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("province");
    System.out.println("id="+id);
    if(id !=null&& id.equals("hn")){
        out.println("zz,郑州市|ly,洛阳市");
    }else if(id != null && id.equals("sx")){
        out.println("xa,西安市|xy,咸阳市");
    }
%>