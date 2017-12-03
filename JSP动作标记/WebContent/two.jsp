<%@ page language="java" contentType="text/html; charset=utf-8"%>
<HEAD>
<jsp:include page="head.txt"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</HEAD>
<HTML><BODY bgcolor=yellow>
<P><Font size=2 color =blue>This is two.jsp</Font>
  <Font size =3></Font>
   <% String s=request.getParameter("number"); 
   out.println("<BR>传递过来的值是"+s);
   %>
  <BR><img src="a.JPG"width="<%=s %>" height="<%=s %>"></img> 

</body>
</html>