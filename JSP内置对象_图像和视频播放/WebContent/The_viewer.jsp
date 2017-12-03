<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style type="text/css">      
     body{      
        background-image: url(img/a.jpg);      
        background-size:cover;    
     }      
 </style>   
<%!public String handleStr(String s) {
		try {
			byte[] bb = s.getBytes("iso-8859-1");
			s = new String(bb);
			return s;
		} catch (Exception e) {
			return s;
		}
	}%>
<%
	String video = request.getParameter("video");
	if (video == null)
		video = "";
	video = handleStr(video);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>图像和视频播放器</title>
</head>
<body>
<center>
	<form action="" method="post" name="form">
		<b>选择视频</b> <br> <select name="video">
			<option value="梦幻.avi">梦幻
			<option value="我的祖国.avi">我的祖国
			<option value="夕阳山顶.avi">夕阳山顶
		</select> <input type="submit" value="提交" name="submit">
	</form>
	<img src="flower.jpg" width=120 height=120>
	<embed src="<%= video %>" width=300 height=180>视频
</body>
</html>