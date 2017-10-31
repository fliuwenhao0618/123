<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>知孚IP</title>
	<link href="css/index.css" rel="stylesheet" type="text/css" />
  <link href="img/ICO32.ico" rel="shortcut icon" type="image/x-icon" />
  <script type="text/javascript">
    var click01;
    function ShowDiv(e){
        click01=new String(e.id);
        var Func=click01.toUpperCase();
        document.getElementById(Func).style.display="block";
        document.getElementById("N").style.display="block";
    }
    function ClearDiv(e){
        click01=new String(e.id);
        var Func=click01.toUpperCase();
        document.getElementById(Func).style.display="none";
        document.getElementById("N").style.display="none";
    }
    </script>
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
        		<li><a href="${pageContext.request.contextPath}/finndUserInfo.action">个人信息</a><li>
          <li><a href="${pageContext.request.contextPath}/pshowFavorites.action">收藏夹</a></li>
          <li>服务热线：<span class="active">000-000-0000</span></li>
        </ul>
      </div>
  </div>
     <div class="qq">
    <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=359003035&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:359003035:53" alt="点击这里给我发送消息" title="点击这里给我发送消息"/></a>
    </div>
  <!--搜索-->
  <div id="search">
  	<img src="images/index/LOGO.gif" title="知孚IP" alt="LOGO" />
    <form action="${pageContext.request.contextPath}/query.action" method="post">
    	<input class="text" type="text" name="bname" placeholder="请输入商标名称或编号" /><input class="submit" type="submit" name="提交按钮" value="搜索" />
    </form>
    <div class="hot">
    	<a href="${ctx}/queryByremen.action?bname=家具服装">家具服装</a> |
      <a href="${ctx}/queryByremen.action?bname=日化用品">日化用品</a> |
      <a href="${ctx}/queryByremen.action?bname=办公用品">办公用品</a> |
      <a href="${ctx}/queryByremen.action?bname=健身医疗">健身医疗</a> |
      <a href="${ctx}/queryByremen.action?bname=食品">食品</a> |
      <a href="${ctx}/queryByremen.action?bname=教育">教育</a>
      <a href="${pageContext.request.contextPath}/sort.action">更多>></a>
    </div>
  </div>
  <!--导航-->
  <div id="nav">
  	<div class="list">
    	<a href="${pageContext.request.contextPath}/toIndex.action""><p>商标主题</p></a>
    </div>
    <ul>
      <li><a class="active" href="${pageContext.request.contextPath}/toIndex.action">首页</a></li>
      <li><a href="${pageContext.request.contextPath}/listBypage.action">精品商标转让</a></li>
      <li><a href="${pageContext.request.contextPath}/items/toWanted.action">商标购买</a></li>
      <li><a href="${pageContext.request.contextPath}/insertDemand.action">商标注册</a></li>
      <li><a href="brand_Query.jsp">商标查询</a></li>
      <li><a href="${pageContext.request.contextPath}/sort.action">商标分类</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action">版权专利</a></li>

    </ul>
  </div>
  <!--分割线-->
  <div id="Parting line" style="width:100%; height:0; border:1px solid ${pageContext.request.contextPath}/toIndex.action"eb0e1f; margin:0 auto;"></div>
  <!--中间内容-->
  <div id="content" >
    <div class="content_bg">     
        <div class="content_middle">
            <div class="content_middle_left"  id="content_middle_left" style="display:block;" >
                <div class="content_middle_top" >
                    <ul class="content_info" id="n">
                        <li id="n1"  onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                            <h2 class="content_title"><a href="${pageContext.request.contextPath}/toIndex.action"">服装鞋帽（25类）</a></h2>
                            <ul class="content_infos">
                                <li><a href="${ctx}/queryByremen.action?bname=男装">男装</a></li>
                                <li><a href="${ctx}/queryByremen.action?bname=女装">女装</a></li>
                                <li><a href="${ctx}/queryByremen.action?bname=童装">童装</a></li>
                                <li><a href="${ctx}/queryByremen.action?bname=裤子">裤子</a></li>
                                <li><a href="${ctx}/queryByremen.action?bname=鞋袜">鞋袜</a></li>
                            </ul>
                        </li>
                        <li id="n2" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                            <h2 class="content_title"><a href="${pageContext.request.contextPath}/toIndex.action"">日化用品（3类）</a></h2>
                            <ul class="content_infos">
                                <li><a href="${ctx}/queryByremen.action?bname=香皂">香皂</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=洗面奶">洗面奶</a></li>
                            <li style="width:70px;"><a href="${ctx}/queryByremen.action?bname=美容面膜" >美容面膜</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=洗发水">洗发水</a></li>                          
                            </ul>
                        </li>
                    <li id="n3" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="${pageContext.request.contextPath}/toIndex.action"">酒精饮品（30类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="${ctx}/queryByremen.action?bname=白酒">白酒</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=鸡尾酒">鸡尾酒</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=蜂蜜酒">蜂蜜酒</a></li>
                            <li style="width:70px;"><a href="${ctx}/queryByremen.action?bname=酒精饮品">酒精饮品</a></li>
                        </ul>
                    </li>
                    <li id="n4" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="${pageContext.request.contextPath}/toIndex.action"">食品（9类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="${ctx}/queryByremen.action?bname=肉">肉</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=牛奶">牛奶</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=奶粉">奶粉</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=食用油">食用油</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=坚果">坚果</a></li>
                        </ul>
                    </li>
                    <li id="n5" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="brand_Transfer.jsp">方便食品（20类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="${ctx}/queryByremen.action?bname=咖啡">咖啡</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=面包">面包</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=饼干">饼干</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=蜂蜜">蜂蜜</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=蛋糕">蛋糕</a></li>
                        </ul>
                    </li>
                    <li id="n6" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)"> 
                        <h2 class="content_title"><a href="${pageContext.request.contextPath}/toIndex.action"">家具用品</a></h2>
                        <ul class="content_infos">
                            <li><a href="${ctx}/queryByremen.action?bname=床">床</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=茶几">茶几</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=沙发">沙发</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=座椅">座椅</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=床垫">床垫</a></li>
                        </ul>
                    </li>
                    <li id="n7" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)"> 
                        <h2 class="content_title"><a href="${pageContext.request.contextPath}/toIndex.action"">医药用品</a></h2>
                        <ul class="content_infos">
                            <li><a href="${ctx}/queryByremen.action?bname=减肥药">减肥药</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=维他命">维他命</a></li>
                            <li><a href="${ctx}/queryByremen.action?bname=药酒">药酒</a></li>
                        </ul>
                    </li>
                 </ul>
                </div>
                <div class="content_middle_bottom"><a href="${pageContext.request.contextPath}/toIndex.action""><img title="精品商标转让" alt="more" src="images/index/content_bottom.jpg" /></a></div>
            </div>
            <!--Js展示内容开始--><!--style="display:none"-->
            <div class="content_middle_top_show" id="N" style="display:none">
                <div id="N1" class="N1" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>衣物</p>                     
                       
                        <li><a href="${ctx}/queryByremen.action?bname=男装">男装</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=女装">女装</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=裤子">裤子</a><span>|</span></li>
                       
                    </ul>
                    <ul>     
                        <p>婴儿纺织用品</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=婴儿裤">婴儿裤</a><span>|</span></li>
                      
                        <li><a href="${ctx}/queryByremen.action?bname=非纸质围">非纸质围</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=婴儿睡袋">婴儿睡袋</a></li>
                    </ul>
                     <ul>     
                        <p>鞋</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=运动鞋">运动鞋</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=凉鞋">凉鞋</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=拖鞋">拖鞋</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=雨鞋">雨鞋</a><span>|</span></li>
                       
                    </ul>
                    <ul>     
                        <p>帽</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=男帽">男帽</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=女帽">女帽</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=儿童帽">儿童帽</a><span>|</span></li>
                       
                    </ul>
                    <ul>     
                        <p>袜</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=长袜">长袜</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=短袜">短袜</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=丝袜">丝袜</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=袜裤">袜裤</a></li>
                    </ul>
                    <ul>     
                        <p>特殊用鞋</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=爬山鞋">爬山鞋</a><span>|</span></li>
                        
                        <li><a href="${ctx}/queryByremen.action?bname=滑雪靴">滑雪靴</a><span>|</span></li>
                       
                    </ul>
                </div>
                <div id="N2" class="N2" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>洗洁用品</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=香皂">香皂</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=洗面奶">洗面奶</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=浴液">浴液</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=婴儿睡袋">护发素</a><span>|</span></li>
                       
                    </ul>
                    <ul>     
                        <p>洗洁去渍制剂</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=去污剂">去污剂</a><span>|</span></li>
                       
                        <li><a href="${ctx}/queryByremen.action?bname=清洁制剂">清洁制剂</a><span>|</span></li>
                        
                    </ul>
                   
                </div>
                <div id="N3" class="N3" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>含酒精的饮料</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=烧酒">烧酒</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=葡萄酒">葡萄酒</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=清酒">清酒</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=米酒">米酒</a><span>|</span></li>
                      
                    </ul>                        
                </div>
                <div id="N4" class="N4" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>肉类</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=肉">肉</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=肉干">肉干</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=猪肉">猪肉</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=肉冻">肉冻</a><span>|</span></li>
                       
                    </ul>
                    <ul>     
                        <p>非活水产品</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=鱼">鱼(非活的)</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=鱼制食品">鱼制食品</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=虾">虾</a><span>|</span></li>
                      
                    </ul>
                    <ul>     
                        <p>奶及乳制品</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=牛奶">牛奶</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=豆奶">豆奶</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=奶油">奶油</a><span>|</span></li>
                      
                    </ul>
                   
                </div>
                <div id="N5"  class="N5" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>咖啡、可可</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=咖啡">咖啡</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=可可">可可</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=巧克力">巧克力</a><span>|</span></li>
                       
                    </ul>
                    <ul>     
                        <p>茶叶</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=茶">茶</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=冰茶">冰茶</a><span>|</span></li>
                       
                    </ul>
                     <ul>     
                        <p>糖</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=糖">糖</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=红糖">红糖</a><span>|</span></li>
                      
                    </ul>
                   
                </div>
                <div id="N6" class="N6" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>家具</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=文件柜">文件柜</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=婴儿摇床">婴儿摇床</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=床架">床架</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=椅子">椅子</a><span>|</span></li>
                      
                    </ul>
                    <ul>     
                        <p>非金属容器</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=葡萄酒用桶">葡萄酒用桶</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=鱼蓝">鱼蓝</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=非金属桶">非金属桶</a><span>|</span></li>
                       
                    </ul>
                     <ul>     
                        <p>镜子，画框及部件</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=镜子">镜子</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=手持镜子">手持镜子</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=相框边条">相框边条</a></li>
                    </ul>
                    
                </div>
                <div id="N7" class="N7" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>药品</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=消毒剂">消毒剂</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=卫生消毒剂">卫生消毒剂</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=放射性药品">放射性药品</a><span>|</span></li>
                      
                    </ul>
                    <ul>     
                        <p>营养品</p>                     
                        <li><a href="${ctx}/queryByremen.action?bname=医用营养品">医用营养品</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=医用营养饮料">医用营养饮料</a><span>|</span></li>
                        <li><a href="${ctx}/queryByremen.action?bname=婴儿食品">婴儿食品</a></li>
                    </ul>
                  
                </div>
            </div>
            <!--Js展示内容结束-->
        </div>         
    </div>
    <div class="content_bottom_info">
        <div class="content_bottom_info_img">
        </div>
        <div class="info_1">
            <ul class="infos_top">
                <li class="infos_top_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[0].bid }">
                        <div>
                            <img src="/pic/${brands[0].image}" width="90" height="60"/>
                            <p class="infos_top_show_title">￥${brands[0].price }</p>
                            <p class="infos_top_show_info">${brands[0].bname }</p>
                        </div>
                    </a>
                </li>
                <li class="infos_top_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[1].bid }">
                        <div>
                            <img src="/pic/${brands[1].image}" width="90" height="60" alt="logo" />
                            <p class="infos_top_show_title">￥${brands[1].price }</p>
                            <p class="infos_top_show_info">${brands[1].bname }</p>
                        </div>
                    </a>
                </li>
                <li class="infos_top_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[2].bid }">
                        <div>
                            <img src="/pic/${brands[2].image}"width="90" height="60" alt="logo" />
                            <p class="infos_top_show_title">￥${brands[2].price }</p>
                            <p class="infos_top_show_info">${brands[2].bname }</p>
                        </div>
                    </a>
                </li>
                <li class="infos_top_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[3].bid }">
                        <div>
                            <img src="/pic/${brands[3].image}" width="90" height="60" alt="logo" />
                            <p class="infos_top_show_title">￥${brands[3].price }</p>
                            <p class="infos_top_show_info">${brands[3].bname }</p>
                        </div>
                    </a>
                </li>
                <li class="infos_top_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[4].bid }">
                        <div>
                            <img src="/pic/${brands[4].image}" width="90" height="60" alt="logo" />
                            <p class="infos_top_show_title">￥${brands[4].price }</p>
                            <p class="infos_top_show_info">${brands[4].bname }</p>
                        </div>
                    </a>
                </li>
            </ul>
            <ul class="infos_bottom">
                <li class="infos_bottom_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[5].bid }">
                        <div>
                            <img src="/pic/${brands[5].image}" width="90" height="60" alt="logo" />
                            <p class="infos_bottom_show_title">￥${brands[5].price }</p>
                            <p class="infos_bottom_show_info">${brands[5].bname }</p>
                        </div>
                    </a>
                </li>
                <li class="infos_bottom_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[6].bid }">
                        <div>
                            <img src="/pic/${brands[6].image}"width="90" height="60" alt="logo" />
                            <p class="infos_bottom_show_title">￥${brands[6].price }</p>
                            <p class="infos_bottom_show_info">${brands[6].bname }</p>
                        </div>
                    </a>
                </li>
                <li class="infos_bottom_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[7].bid }">
                        <div>
                            <img src="/pic/${brands[7].image}" width="90" height="60" alt="logo" />
                            <p class="infos_bottom_show_title">￥${brands[7].price }</p>
                            <p class="infos_bottom_show_info">${brands[7].bname }</p>
                        </div>
                    </a>
                </li>
                <li class="infos_bottom_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[8].bid }">
                        <div>
                            <img src="/pic/${brands[8].image}" width="90" height="60" alt="logo" />
                            <p class="infos_bottom_show_title">￥${brands[8].price }</p>
                            <p class="infos_bottom_show_info">${brands[8].bname }</p>
                        </div>
                    </a>
                </li>
                <li class="infos_bottom_show">
                    <a href="<%=basePath %>toDetails.action?bid=${brands[9].bid }">
                        <div>
                            <img src="/pic/${brands[9].image}" width="90" height="60" alt="logo" />
                            <p class="infos_bottom_show_title">￥${brands[9].price }</p>
                            <p class="infos_bottom_show_info">${brands[9].bname }</p>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="info_title_img">
        </div>
        <div class="allinfo_show" style="height:2100px">
            <div style="float:left;margin:20px 0;">
                <div class="infoshow">
                    <div class="head_infoshow">
                        <p> 服饰鞋帽</p>
                        <ul>
                            <li>
                                <div class="infoshow_left"><a href="${ctx}/queryByremen.action?bname=男装">男装 </a></div>
                            </li>
                            <li>
                                <div class="infoshow_left"><a href="${ctx}/queryByremen.action?bname=大衣">大衣</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left"><a href="${ctx}/queryByremen.action?bname=睡衣">睡衣</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left"><a href="${ctx}/queryByremen.action?bname=帽子">帽子</a></div>
                            </li>
                        </ul>
                    </div>
                    <div class="head_more">
                        <a href="${pageContext.request.contextPath}/toIndex.action"">more</a>
                    </div>
                </div>
                <div class="infoshow_bottom">
                    <table>
                        <tr>
                            <td rowspan="2"><a href="<%=basePath %>toDetails.action?bid=${c1[0].bid }"><img src="/pic/${brands[0].image}" width="85" height="62" alt="LOGO" />
                                <p class="infoshow_bottom_title">￥${c1[0].price }</p>
                                <p class="infoshow_bottom_info">${c1[0].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c1[1].bid }"><img src="/pic/${brands[1].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c1[1].price }</p>
                                <p class="infoshow_bottom_info">${c1[1].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c1[2].bid }"><img src="/pic/${brands[2].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c1[2].price }</p>
                                <p class="infoshow_bottom_info">${c1[2].bname }</p></a></td>
                        </tr>
                        <tr>                         
                              <td><a href="<%=basePath %>toDetails.action?bid=${c1[3].bid }"><img src="/pic/${brands[3].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c1[3].price }</p>
                                <p class="infoshow_bottom_info">${c1[3].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c1[4].bid }"><img src="/pic/${brands[4].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c1[4].price }</p>
                                <p class="infoshow_bottom_info">${c1[4].bname }</p></a></td>
                        </tr>
                        <tr>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c1[5].bid }"><img src="/pic/${brands[5].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c1[5].price }</p>
                                <p class="infoshow_bottom_info">${c1[5].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c1[6].bid }"><img src="/pic/${brands[6].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c1[6].price }</p>
                                <p class="infoshow_bottom_info">${c1[6].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c1[7].bid }"><img src="/pic/${brands[7].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c1[7].price }</p>
                                <p class="infoshow_bottom_info">${c1[7].bname }</p></a></td>
                        </tr>
                    </table>
                </div>
             
            </div>
            <div style="float:right; margin:20px 0;">
                <div class="infoshow" style="background-color:${pageContext.request.contextPath}/toIndex.action"929db6;">
                    <div class="head_infoshow" style="background-color:${pageContext.request.contextPath}/toIndex.action"58688f">
                        <p>日化用品</p>
                        <ul>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"929db6;font-size:16px"><a href="${ctx}/queryByremen.action?bname=洗面奶">洗面奶</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"929db6"><a href="${ctx}/queryByremen.action?bname=鞋油">鞋油</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"929db6;font-size:16px"><a href="${ctx}/queryByremen.action?bname=化妆品">化妆品</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"929db6"><a href="${ctx}/queryByremen.action?bname=香水">香水</a></div>
                            </li>
                        </ul>
                    </div>
                    <div class="head_more">
                        <a href="${pageContext.request.contextPath}/toIndex.action"">more</a>
                    </div>
                </div>
                <div class="infoshow_bottom">
                    <table>
                        <tr>
                            <td rowspan="2"><a href="<%=basePath %>toDetails.action?bid=${c2[0].bid }"><img src="/pic/${brands[0].image}" width="85" height="62" alt="LOGO" />
                                <p class="infoshow_bottom_title">￥${c2[0].price }</p>
                                <p class="infoshow_bottom_info">${c2[0].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c2[1].bid }"><img src="/pic/${brands[1].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c2[1].price }</p>
                                <p class="infoshow_bottom_info">${c2[1].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c2[2].bid }"><img src="/pic/${brands[2].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c2[2].price }</p>
                                <p class="infoshow_bottom_info">${c2[2].bname }</p></a></td>
                        </tr>
                        <tr>                         
                              <td><a href="<%=basePath %>toDetails.action?bid=${c2[3].bid }"><img src="/pic/${brands[3].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c2[3].price }</p>
                                <p class="infoshow_bottom_info">${c2[3].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c2[4].bid }"><img src="/pic/${brands[4].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c2[4].price }</p>
                                <p class="infoshow_bottom_info">${c2[4].bname }</p></a></td>
                        </tr>
                        <tr>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c2[5].bid }"><img src="/pic/${brands[5].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c2[5].price }</p>
                                <p class="infoshow_bottom_info">${c2[5].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c2[6].bid }"><img src="/pic/${brands[6].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c2[6].price }</p>
                                <p class="infoshow_bottom_info">${c2[6].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c2[7].bid }"><img src="/pic/${brands[7].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c2[7].price }</p>
                                <p class="infoshow_bottom_info">${c2[7].bname }</p></a></td>
                        </tr>
                    </table>
                </div>
              
            </div>
            <div style="float:left; margin:20px 0; ">
                <div class="infoshow" style="background-color:${pageContext.request.contextPath}/toIndex.action"dc7c93;">
                    <div class="head_infoshow" style="background-color:${pageContext.request.contextPath}/toIndex.action"ca3559">
                        <p>电子产品</p>
                        <ul>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"ca3559"><a href="${ctx}/queryByremen.action?bname=手机">手机</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"ca3559"><a href="${ctx}/queryByremen.action?bname=手环">手环</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"ca3559;font-size:10px;"><a href="${ctx}/queryByremen.action?bname=智能手表">智能手表</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"ca3559"><a href="${ctx}/queryByremen.action?bname=ipad">ipad</a></div>
                            </li>
                        </ul>
                    </div>
                    <div class="head_more">
                        <a href="${pageContext.request.contextPath}/toIndex.action"">more</a>
                    </div>
                </div>
                <div class="infoshow_bottom">
                    <table>
                        <tr>
                            <td rowspan="2"><a href="<%=basePath %>toDetails.action?bid=${c3[0].bid }"><img src="/pic/${brands[0].image}" width="85" height="62" alt="LOGO" />
                                <p class="infoshow_bottom_title">￥${c3[0].price }</p>
                                <p class="infoshow_bottom_info">${c3[0].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c3[1].bid }"><img src="/pic/${brands[1].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c3[1].price }</p>
                                <p class="infoshow_bottom_info">${c3[1].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c3[2].bid }"><img src="/pic/${brands[2].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c3[2].price }</p>
                                <p class="infoshow_bottom_info">${c3[2].bname }</p></a></td>
                        </tr>
                        <tr>                         
                              <td><a href="<%=basePath %>toDetails.action?bid=${c3[3].bid }"><img src="/pic/${brands[3].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c3[3].price }</p>
                                <p class="infoshow_bottom_info">${c3[3].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c3[4].bid }"><img src="/pic/${brands[4].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c3[4].price }</p>
                                <p class="infoshow_bottom_info">${c3[4].bname }</p></a></td>
                        </tr>
                        <tr>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c3[5].bid }"><img src="/pic/${brands[5].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c3[5].price }</p>
                                <p class="infoshow_bottom_info">${c3[5].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c3[6].bid }"><img src="/pic/${brands[6].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c3[6].price }</p>
                                <p class="infoshow_bottom_info">${c3[6].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c3[7].bid }"><img src="/pic/${brands[7].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c3[7].price }</p>
                                <p class="infoshow_bottom_info">${c3[7].bname }</p></a></td>
                        </tr>
                    </table>
                </div>
              
            </div>
            <div style="float:right; margin:20px 0;">
                <div class="infoshow" style="background-color: ${pageContext.request.contextPath}/toIndex.action"f57efc">
                    <div class="head_infoshow" style="background-color: ${pageContext.request.contextPath}/toIndex.action"ef39fb">
                        <p>食品</p>
                        <ul>
                            <li>
                                <div class="infoshow_left" style="background-color: ${pageContext.request.contextPath}/toIndex.action"f57efc"><a href="${ctx}/queryByremen.action?bname=肉">肉 </a></div>f57efc
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color: ${pageContext.request.contextPath}/toIndex.action"f57efc"><a href="${ctx}/queryByremen.action?bname=牛奶">牛奶</a></div>f57efc
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color: ${pageContext.request.contextPath}/toIndex.action"f57efc"><a href="${ctx}/queryByremen.action?bname=坚果">坚果</a></div>f57efc
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color: ${pageContext.request.contextPath}/toIndex.action"f57efc; font-size:16px;"><a href="${ctx}/queryByremen.action?bname=食用油">食用油</a></div>f57efc
                            </li>
                        </ul>
                    </div>
                    <div class="head_more">
                        <a href="${pageContext.request.contextPath}/toIndex.action"">more</a>
                    </div>
                </div>
                <div class="infoshow_bottom">
                    <table>
                        <tr>
                            <td rowspan="2"><a href="<%=basePath %>toDetails.action?bid=${c4[0].bid }"><img src="/pic/${brands[0].image}" width="85" height="62" alt="LOGO" />
                                <p class="infoshow_bottom_title">￥${c4[0].price }</p>
                                <p class="infoshow_bottom_info">${c4[0].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c4[1].bid }"><img src="/pic/${brands[1].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c4[1].price }</p>
                                <p class="infoshow_bottom_info">${c4[1].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c4[2].bid }"><img src="/pic/${brands[2].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c4[2].price }</p>
                                <p class="infoshow_bottom_info">${c4[2].bname }</p></a></td>
                        </tr>
                        <tr>                         
                              <td><a href="<%=basePath %>toDetails.action?bid=${c4[3].bid }"><img src="/pic/${brands[3].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c4[3].price }</p>
                                <p class="infoshow_bottom_info">${c4[3].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c4[4].bid }"><img src="/pic/${brands[4].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c4[4].price }</p>
                                <p class="infoshow_bottom_info">${c4[4].bname }</p></a></td>
                        </tr>
                        <tr>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c4[5].bid }"><img src="/pic/${brands[5].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c4[5].price }</p>
                                <p class="infoshow_bottom_info">${c4[5].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c4[6].bid }"><img src="/pic/${brands[6].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c4[6].price }</p>
                                <p class="infoshow_bottom_info">${c4[6].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c4[7].bid }"><img src="/pic/${brands[7].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c4[7].price }</p>
                                <p class="infoshow_bottom_info">${c4[7].bname }</p></a></td>
                        </tr>
                    </table>
                </div>
              
            </div>
            <div style="float:left; margin:20px 0;">
                <div class="infoshow" style="background-color:${pageContext.request.contextPath}/toIndex.action"8eb2a7;">
                    <div class="head_infoshow" style="background-color:${pageContext.request.contextPath}/toIndex.action"518978;">
                        <p>家具用品</p>
                        <ul>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"8eb2a7;"><a href="${ctx}/queryByremen.action?bname=桌子">桌子 </a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"8eb2a7;"><a href="${ctx}/queryByremen.action?bname=沙发">沙发</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"8eb2a7;"><a href="${ctx}/queryByremen.action?bname=茶几">茶几</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color:${pageContext.request.contextPath}/toIndex.action"8eb2a7;"><a href="${ctx}/queryByremen.action?bname=床铺">床铺</a></div>
                            </li>
                        </ul>
                    </div>
                    <div class="head_more">
                        <a href="${pageContext.request.contextPath}/toIndex.action"">more</a>
                    </div>
                </div>
                <div class="infoshow_bottom">
                    <table>
                        <tr>
                            <td rowspan="2"><a href="<%=basePath %>toDetails.action?bid=${c5[0].bid }"><img src="/pic/${brands[0].image}" width="85" height="62" alt="LOGO" />
                                <p class="infoshow_bottom_title">￥${c5[0].price }</p>
                                <p class="infoshow_bottom_info">${c5[0].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c5[1].bid }"><img src="/pic/${brands[1].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c5[1].price }</p>
                                <p class="infoshow_bottom_info">${c5[1].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c5[2].bid }"><img src="/pic/${brands[2].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c5[2].price }</p>
                                <p class="infoshow_bottom_info">${c5[2].bname }</p></a></td>
                        </tr>
                        <tr>                         
                              <td><a href="<%=basePath %>toDetails.action?bid=${c5[3].bid }"><img src="/pic/${brands[3].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c5[3].price }</p>
                                <p class="infoshow_bottom_info">${c5[3].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c5[4].bid }"><img src="/pic/${brands[4].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c5[4].price }</p>
                                <p class="infoshow_bottom_info">${c5[4].bname }</p></a></td>
                        </tr>
                        <tr>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c5[5].bid }"><img src="/pic/${brands[5].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c5[5].price }</p>
                                <p class="infoshow_bottom_info">${c5[5].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c5[6].bid }"><img src="/pic/${brands[6].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c5[6].price }</p>
                                <p class="infoshow_bottom_info">${c5[6].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c5[7].bid }"><img src="/pic/${brands[7].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c5[7].price }</p>
                                <p class="infoshow_bottom_info">${c5[7].bname }</p></a></td>
                        </tr>
                    </table>
                </div>
              
            </div>
            <div style="float:right; margin:20px 0;">
                <div class="infoshow" style="background-color: ${pageContext.request.contextPath}/toIndex.action"86b2c6">
                    <div class="head_infoshow" style="background-color:${pageContext.request.contextPath}/toIndex.action"4589a8">
                        <p>医药用品</p>
                        <ul>
                            <li>
                                <div class="infoshow_left" style="background-color: ${pageContext.request.contextPath}/toIndex.action"86b2c6"><a href="${ctx}/queryByremen.action?bname=补药">补药 </a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="font-size:16px;background-color: ${pageContext.request.contextPath}/toIndex.action"86b2c6"><a href="${ctx}/queryByremen.action?bname=减肥药">减肥药</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="font-size:16px;background-color: ${pageContext.request.contextPath}/toIndex.action"86b2c6"><a href="${ctx}/queryByremen.action?bname=保健品">保健品</a></div>
                            </li>
                            <li>
                                <div class="infoshow_left" style="background-color: ${pageContext.request.contextPath}/toIndex.action"86b2c6"><a href="${ctx}/queryByremen.action?bname=药酒">药酒</a></div>
                            </li>
                        </ul>
                    </div>
                    <div class="head_more" >
                        <a href="${pageContext.request.contextPath}/toIndex.action"">more</a>
                    </div>
                </div>
                <div class="infoshow_bottom">
                    <table>
                        <tr>
                            <td rowspan="2"><a href="<%=basePath %>toDetails.action?bid=${c6[0].bid }"><img src="images/index/info_logo_big.png" alt="LOGO" />
                                <p class="infoshow_bottom_title">￥${c6[0].price }</p>
                                <p class="infoshow_bottom_info">${c6[0].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c6[1].bid }"><img src="/pic/${brands[1].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c6[1].price }</p>
                                <p class="infoshow_bottom_info">${c6[1].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c6[2].bid }"><img src="/pic/${brands[2].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c6[2].price }</p>
                                <p class="infoshow_bottom_info">${c6[2].bname }</p></a></td>
                        </tr>
                        <tr>                         
                              <td><a href="<%=basePath %>toDetails.action?bid=${c6[3].bid }"><img src="/pic/${brands[3].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c6[3].price }</p>
                                <p class="infoshow_bottom_info">${c6[3].bname }</p></a></td>
                              <td><a href="<%=basePath %>toDetails.action?bid=${c6[4].bid }"><img src="/pic/${brands[4].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c6[4].price }</p>
                                <p class="infoshow_bottom_info">${c6[4].bname }</p></a></td>
                        </tr>
                        <tr>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c6[5].bid }"><img src="/pic/${brands[5].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c6[5].price }</p>
                                <p class="infoshow_bottom_info">${c6[5].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c6[6].bid }"><img src="/pic/${brands[6].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c6[6].price }</p>
                                <p class="infoshow_bottom_info">${c6[6].bname }</p></a></td>
                             <td><a href="<%=basePath %>toDetails.action?bid=${c6[7].bid }"><img src="/pic/${brands[7].image}" width="85" height="62" alt="logo" />
                                <p class="infoshow_bottom_title">￥${c6[7].price }</p>
                                <p class="infoshow_bottom_info">${c6[7].bname }</p></a></td>
                        </tr>
                    </table>
                </div>
              
            </div>
        </div>
        
      
<!--下方-->
<div id="footer">
  <ul class="upper">
    <li><span>品质服务</span><br />一对一，服务贴心周到</li>
    <li><span>全程跟踪</span><br />随时沟通客户，助力通过</li>
    <li><span>多平台保障</span><br />操作简单方便，应答快捷</li>
    <li><span>管理软件支持</span><br />随时随地，轻松管理</li>
  </ul>
  <div class="lower">
    <ul class="purchase">
      <p>购买指南</p><br />
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">如何注册</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">购买流程</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">商品咨询</a></li>
    </ul>
    <ul class="right">
      <p>知识产权与知识</p><br />
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">版权登记知识</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">专利申请知识</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">商标注册知识</a></li>
    </ul>
    <ul class="safety">
      <p>安全服务</p><br />
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">如何设置密码</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">如何绑定账号</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">服务条款</a></li>
    </ul>
    <ul class="help">
      <p>帮助中心</p><br />
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">在线业务办理</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">顾问信息展示</a></li>
      <li><a href="${pageContext.request.contextPath}/toIndex.action"">业务节点信息</a></li>
    </ul>
    <div class="service">
      <h1>免费服务热线</h1>
      <h2>17324913630 17324923630</h2>
      <h3><span>服务时间</span> 0:00-24:00 </h3>
    </div>
  </div>
</div>
  <!--底部-->
  <div id="botoom">
  	<div class="relatives">
    	<a href="${pageContext.request.contextPath}/toIndex.action"">关于我们</a> |
      <a href="${pageContext.request.contextPath}/toIndex.action"">联系我们</a> |
      <a href="${pageContext.request.contextPath}/toIndex.action"">问题反馈</a> |
      <a href="${pageContext.request.contextPath}/toIndex.action"">友情链接</a>
    </div>
  </div>
</body>
</html>