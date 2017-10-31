<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>修改信息</title>
    <link href="admin/css/bg_index.css" rel="stylesheet" type="text/css" />
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
            
        <form class="bg_form" action="${pageContext.request.contextPath}/adminEdit.action" method="post" enctype="multipart/form-data">
         <input type="hidden" name="bid" value="${brand.bid }">
                &nbsp; &nbsp;商品名称:<input type="text" name="bname" value="${brand.bname }" />&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;价格:<input type="text" name="price" value="${brand.price }" /><br>
            &nbsp;&nbsp;&nbsp;商品类别:<select>
                <option>1</option>
                <option>2</option>
                <option>3</option>
            </select>&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;商品图片:<input type="file" name="items_pic" value="${brand.image }" /><br>
            商品注册号:<input type="text"  name="number" value="${brand.number }" /><br>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 所属地:<input type="text"  name="local" value="${brand.local }" /><br>
            &nbsp;&nbsp;&nbsp;组合类型:<input type="text" name="portfolio" value="${brand.portfolio }" /><br>
            &nbsp; &nbsp;使用项目:<input type="text" name="application" value="${brand.application }" /><br>
            <input id="bg_sub" type="submit" value="提交">
        </form>
    </div>
</body>
</html>