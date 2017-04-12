<%@ page import="javafx.scene.shape.Circle" %><%--
  Created by IntelliJ IDEA.
  User: fanwei
  Date: 2017/3/27
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
123
<%  out.println("Your IP address is " + request.getRemoteAddr());  %>
<br/>
<%! int i = 0;  %>
<%! int day = 3;  %>
<%! int a, b, c;  %>
<%! Circle circle = new Circle(2.0); %>
<br/>
Today's date: <%=  (new java.util.Date()).toLocaleString() %>
<br/>
<% if (day == 1 || day == 7) { %>
         <p> Today is weekend</p>
<% } else { %>
        <p> Today is not weekend</p>
<% } %>
<br/>

<form action="main.jsp" method="GET">
    First Name: <input type="text" name="first_name">
    <br />
    Last Name: <input type="text" name="last_name" />
    <input type="submit" value="Submit" />
</form>

<br>
<h3>File Upload:</h3>
Select a file to upload: <br />
<form action="UploadServlet" method="post"
      enctype="multipart/form-data">
    <input type="file" name="file" size="50" />
    <br />
    <input type="submit" value="Upload File" />
</form>
<br>
</body>
</html>
