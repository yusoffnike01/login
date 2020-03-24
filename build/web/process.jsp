<%-- 
    Document   : process
    Created on : Mar 23, 2020, 9:58:42 PM
    Author     : user
--%>

<%@page import="DAO.UserDao"%>
<%@page import="DAO.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String submit=request.getParameter("Submit");
            
if(submit.equalsIgnoreCase("Login"))
{
     String username=request.getParameter("name");
              String password=request.getParameter("pass");
              String role=request.getParameter("role");
              
              user obj =UserDao.getLoginBySession(username, password,role);
              if(username.equals(obj.getUser())&&password.equals(obj.getPassword())&&(role.equals((obj.getRole()))))
                  
              {
                  if(obj.getRole().equals("role1"))
                  {
                  response.sendRedirect("page1.jsp");
                  }
                  else if(obj.getRole().equals("role2"))
                  {
                        response.sendRedirect("page2.jsp");
                  }
                  else
                  {
                       response.sendRedirect("index.jsp");
                  }
                  
              }
              else
              {
                  response.sendRedirect("index.jsp");
              }
             
                 
}
            
            %>
    </body>
</html>
