<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>修改信息</title>
    <link href="css/bg_index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="bg_index">
        <div class="bg_top">
          <c:choose>
        		<c:when test="${admin_session.username eq null }">
        			<a href="${pageContext.request.contextPath}/admin/bg_login.jsp"><span>请登录</span></a>
        		</c:when>
        		
        		<c:otherwise>
        			<span>${admin_session.username}管理员 你好！</span>
        		</c:otherwise>
        	
        	</c:choose>

            <font>欢迎来到知孚IP后台管理页面</font>
        </div>
        <div class="bg_content">
            <ul class="bg_left">
               <li><a id="bg_blue">信息管理</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/bg_addadmin.jsp" id="bg_left_active">添加管理员</a></li>
                <li><a href="${pageContext.request.contextPath}/addPre.action" id="bg_left_active">添加信息</a></li>
                <li><a href="${pageContext.request.contextPath}/adminlist.action">查询信息</a></li>
                <li><a href="${pageContext.request.contextPath}/items/pshowItems.action">订单信息</a></li>
                <li><a href="${pageContext.request.contextPath}/adminQuit.action" id="bg_blue">退出登陆</a></li>
            </ul>
            
            <font class="bg_success">${admin.username }失败！</font>
    </div>
</body>
</html>