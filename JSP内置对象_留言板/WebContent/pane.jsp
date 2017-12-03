<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<style type="text/css">      
     body{      
        background-image: url(b.png);      
        background-size:cover;    
     }      
 </style>   
<html>
<head>
</head>
<body>
      <%!Vector v=new Vector();
      int i=0;
      ServletContext application;
      synchronized void leaveWord(String s){
    	  application=getServletContext();;
    	  i++;
    	  v.add("No."+i+" "+s);
    	  application.setAttribute("Mess", v);
      }
 %>
 <% String name=request.getParameter("peopleName");
    String messages=request.getParameter("messages");
    String title=request.getParameter("title");
        if(name==null)
        	name="guest"+(int)(Math.random()*1000);
        if(title==null)
        	title="请别忘了输入标题o(*≧▽≦)ツ";
        if(messages==null)
            messages="留言不写内容那么厉害的吗∑( ° △ °|||)︴";
        String s=name+"#"+title+"#"+messages;
        leaveWord(s);
        out.print("提交成功（゜▽＾*））");
 %>
 <a href="input.jsp">点此返回留言板</a>
</body>
</html>