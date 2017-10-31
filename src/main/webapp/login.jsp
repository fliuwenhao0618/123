<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>知孚IP</title>
	<link href="css/login.css" rel="stylesheet" type="text/css" />
  <link href="images/index/ICO32.ico" rel="shortcut icon" type="image/x-icon" />
</head>

<body>
	<!--头部-->
	<div id="top">
    <div class="text">
    		<ul class="log left">
        	<li style="padding:0;">欢迎来到知孚IP！</li>
      <c:choose>
        		<c:when test="${sessionScope.user_session eq null}">
        			 <li><a class="active" href="/brand1/login.jsp">请登录</a></li>
        		</c:when>
        		<c:otherwise>
        			<span class="active">&nbsp &nbsp用户： ${sessionScope.user_session.username} <a href="${ctx}/logut.action">退出</a></apan>
        			
        		</c:otherwise>
       </c:choose>
         
        	
          <li><a href="/brand1/register.jsp">免费注册</a></li>
        </ul>
        <ul class="detail right">
        	<li><a href="${pageContext.request.contextPath}/finndUserInfo.action">个人信息</a></li>
          <li><a href="${pageContext.request.contextPath}/pshowFavorites.action">收藏夹</a></li>
          <li>服务热线：<span class="active">000-000-0000</span></li>
        </ul>
      </div>
  </div>
  <!--登录-->
  <div id="login">
  	<img src="images/index/LOGO.gif" title="LOGO" />
    <span>用户登录</span>
    <span><a href="${pageContext.request.contextPath }/toIndex.action">返回首页</a></span>
  </div>
  <div id="content">
    <div class="picture">
      <div class="logbox right">
        <p>HI！欢迎进入<span>知孚IP</span>！</p>
        <!--账号密码登录界面-->
        <ul id="ul">
            <li class="active"><a href="#">账号密码登录</a></li>
            <li><a href="#">动态验证码登录</a></li>
          </ul>
        <form id="form1" action="${pageContext.request.contextPath }/login.action" method="post"  style="display:block;">
          <input name="username" class="account" type="text" placeholder="用户名/邮箱/手机号" value="${user.username }"/><span class="point"></span>
          <input name="password" class="password" type="password" placeholder="登录密码" /><span class="point">${message}</span><br />
          <label><input class="checkbox" type="checkbox" />自动登录</label> &nbsp;&nbsp; |<a href="#">忘记密码</a>|<a href="/brand1/register.jsp">免费注册</a><br />
           <input class="log" type="submit" value="登录"/>
         
        </form>
        
       
        <form class="on" id="form2">
          
          <input class="account" type="text" placeholder="请输入注册手机号" /><span class="point">错误提示！</span>
          <div class="verification_code">
           <input class="import" type="text" placeholder="动态验证码" />
           <a href="#" class="send">发送动态验证码</a><span class="point">错误提示！</span><br />
          </div>
          <a href="/brand1/register.jsp">免费注册>>></a><br />
          <a class="log" href="#">登录</a>
          
        </form>
        第三方直接登录：<a class="WeChat" href="#">微信登录</a><a class="QQ" href="#">QQ登录</a>
      </div>
   	</div>
  </div>
  <!--底部-->
  <div id="botoom">
  	<div class="relatives">
    	<a href="#">关于我们</a> |
      <a href="#">联系我们</a> |
      <a href="#">问题反馈</a> |
      <a href="#">友情链接</a>
    </div>
  </div>
</body>
<script>
  window.onload = function(){
    var oForm1 = document.getElementById("form1");
    var oForm2 = document.getElementById("form2");
    var oUl = document.getElementById("ul");
    var aLi= oUl.getElementsByTagName("li");

    aLi[0].onclick = function(){
      oForm1.style.display = "block";
      oForm2.style.display = "none";
      this.className="active";
      aLi[1].className="";
    }

    aLi[1].onclick = function(){ 
      oForm1.style.display = "none";
      oForm2.style.display = "block";
      this.className="active";
      aLi[0].className="";
    }
    
  }
</script>
</html>