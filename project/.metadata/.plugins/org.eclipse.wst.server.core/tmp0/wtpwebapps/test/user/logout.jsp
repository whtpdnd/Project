<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
session.removeAttribute("login");
response.sendRedirect("../main/index.jsp");
%>
