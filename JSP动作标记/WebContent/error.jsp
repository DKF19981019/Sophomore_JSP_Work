<%@ page language="java" contentType="text/html; charset=utf-8"%>
<HEAD>
<jsp:include page="head.txt"/>

</HEAD>
<HTML><BODY bgcolor=yellow>
<P><Font size=5 color =red>This is error.jsp</Font>
  <Font size =3></Font>
   <% String s=request.getParameter("number"); 
   out.println("<BR>传递过来的值是"+s);
   %>
  <BR><img src="a.JPG"width="<%=s %>" height="<%=s %>"></img> 

</body>
</html>