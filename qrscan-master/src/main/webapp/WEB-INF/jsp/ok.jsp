<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>扫码登录首页</title>

    <link rel="stylesheet" type="text/css" href="${ctx}/css/base.css">
    <script type="text/javascript" src="${ctx}/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/qrcode/jquery.qrcode.js"></script>
    <script type="text/javascript" src="${ctx}/js/qrcode/utf.js"></script>
</head>
<body>
<div style="align-content: center;">
    <input type="button" value="登陆" onclick="login();">
    <input type="hidden" value="${uuid}" id="uuid">
</div>
<script>
    function login() {
        if(confirm("确定登陆吗？")){
                window.location.href = "/scanLogin?uuid="+$('#uuid').val();
        }
    }
</script>
</body>
</html>