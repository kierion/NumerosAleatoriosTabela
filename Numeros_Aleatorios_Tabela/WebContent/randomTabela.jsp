<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contador</title>
<%@page import="java.util.*" %>
<%int numero;
int comp = 0;
int[] mostrar = new int[6];
int[] list = new int[6];
Random r = new Random();
for(int i=0; i<list.length; i++){
     numero = r.nextInt(60);
     for(int j=0; j<list.length; j++){
           if(numero == list[j] && j != i){
                 numero = r.nextInt(60);
                 list[i] = numero;
           }else{
                list[i] = numero;
           }}
System.out.println(list[i]);}%>
</head>
<body>
<h1 align=center>Gerador Aleatório para Apostas Lotéricas</h1>
<table border="10" align=center>
	<% for(int t = 0; t < 60; t++){ t--;%>
		<tr>
			<%for(int d = 0; d < 10; d++){%>
			<%t++;
			if(t==list[1] || t==list[2] || t==list[3] || t==list[4] || t==list[5] || t==list[0]){
			out.println("<td BGCOLOR=#FF9111>"+t+"</td>");}else{
				out.println("<td>"+t+"</td>");
				}%>
			<%}%>
		</tr> <%}%>
	</table><br>
	<h2 align=center>Números Gerados</h2>
	<table border="10" align=center><tr>
	<% for(int i = 0; i < 6; i++){
 out.println("<td width=25px align=center>"+(mostrar[i]=list[i])+"</td>");}%>
</tr></table><br>
<div align="center"> 
<form><input type=button value="Gerar Números Aleatórios"  onClick="window.location.reload()"></form> 
</div>
</body>
</html> 