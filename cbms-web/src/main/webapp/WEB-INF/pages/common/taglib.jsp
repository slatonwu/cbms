<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
    int port = request.getServerPort();
    String basePath = null;
    if (port==80){
        basePath = request.getScheme()+"://"+request.getServerName()+path+"/";
    }else{
        basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    }

%>
<c:set var="ctx" value="<%=basePath%>"/>
<link rel="stylesheet" type="text/css" href="${ctx}resources/js/themes/default/easyui.css" />
<link href="${ctx}resources/css/default.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${ctx}resources/js/themes/icon.css" />
<script type="text/javascript" src="${ctx}resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${ctx}resources/js/jquery.easyui.min.js"></script>