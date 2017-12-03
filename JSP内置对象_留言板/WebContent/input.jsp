<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style type="text/css">      
     body{      
        background-image: url(b.png);      
        background-size:cover;    
     }      
 </style>   
<html>
<body>
<center>
 <form action="pane.jsp" method="post" name="form">
           输入您的名字(昵称):<BR><input type="text"name="peopleName">
           <BR>输入您的标题:<BR><input type="text"name="title">
           <BR>输入您的留言内容:<BR><TEXTAREA name="messages"ROWs="10"COLS=36 WRAP="physical"></TEXTAREA>
           <BR><input type="submit"value="提交信息"name="submit">
           </from>
           <form action="show.jsp"method="post"name="form1">
               <input type="submit"value="查看留言板"name="look">
              </form></center>
</body>
</html>