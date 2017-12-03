<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
    <style type="text/css">      
     body{      
        background-image: url(b.png);      
        background-size:cover;    
     }      
 </style>   
    <%!public String handleStr(String s){
    	try{ byte[]bb=s.getBytes("iso-8859-1");
    	s=new String(bb);
    	}
    	catch(Exception exp){}
    	return s;
    }
    %>
<html>
<head>
</head>
<body>
<% Vector v=(Vector)application.getAttribute("Mess");
  for(int i=0;i<v.size();i++){
	  String message=(String)v.elementAt(i);
	  String[]a=message.split("#");
	  out.print("留言人："+handleStr(a[0])+"<br>");
	  out.print("标题："+handleStr(a[1])+"<br>");
	  out.print("留言内容：<br>"+handleStr(a[2]));
	  out.print("<br>------------------<br>");
  }

%>

</body>
</html>