<%-- 
    Document   : index
    Created on : Mar 23, 2020, 9:39:05 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <form action="process.jsp" method="POST">
            
            <table>
                <tr>
                    <td>
                        Username
                    </td>
                    <td>
                        <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <input type="password" name="pass">
                    </td>
                </tr>
                <tr>
                    <td>
                    Role:
                    </td>
                    <td>
                        <select name="role">
                            <option>
                                role1
                            </option>
                            <option>
                                role2
                            </option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    
                </tr>
                <tr><td>
                <input type="submit" name="Submit" value="Login">
                    </td>
                </tr>
            </table>
        </form>
    </center>
    </body>
</html>
