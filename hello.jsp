<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
String today =sdf.format(date);

int num=(int)(Math.random()*100)+1;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>動的webページの例</title>
</head>
<body>
<%-- JSPのコメント --%>
<p>現在の日時 <%= today %></p>
<p>乱数 <%= num %></p>
<p>1+3= <%= 1+3 %></p>
<p> <%= today.length() %></p>

<!-- HTMLのコメント -->
こんばんは！
<%-- 変数 --%>
<%
int x=10, y=20;
%>
<%-- for文 --%>
<p>
<% for(int i=1;i<=5;i++){%>
iの値 <%=i %><br>
<% } %>
<% int z=x+y; %>
zの値 <%= z %>
</p>
<%-- 3の倍数 --%>
<p>
1以上100以下の3の倍数は，<br>
<% for(int i=1;i<101;i++){
	if(i%3==0) {
	    int sum=i;%>
	    <%= sum %>
	    <%}
	}%>
</p>
<%-- 九九の表1 --%>
<p>
九九の表1<br>
<% for(int i=1;i<10;i++){
	for(int k=1;k<10;k++){
		int kuku=i*k;%>
		<%= kuku %>
		<%if(kuku<10){%>
		&nbsp;
		<% }
		 } %>
		 <br>
	<% }%>
</p>
<%-- 九九の表2 --%>
九九の表2<br>
<table border="1">
	<tr>
	 <th>数</th>
	 <th>1</th>
	 <th>2</th>
	 <th>3</th>
	 <th>4</th>
	 <th>5</th>
	 <th>6</th>
	 <th>7</th>
	 <th>8</th>
	 <th>9</th>
	</tr>
	<%for(int i=1;i<10;i++){%>
		<tr align="center">
		<td><%=i %></td>
			<% for(int k=1;k<10;k++){
			int kuku=i*k;%>
			<td><%= kuku %></td>
			<% } %>
			</tr><% }%>
</table>
<%-- フィボナッチ数列 --%>
<p>
フィボナッチ数列<br>
<%int a=1,b=1;%>
	第1項：<%=a %><br>
	第2項：<%=b %><br>
	<%for(int i=3;i<21;i++){
		int sum=b+a;%>
	第<%=i %>項：<%=sum %><br>
	<% b=sum;
	   a=b; }%>
<p>
</body>
</html>

