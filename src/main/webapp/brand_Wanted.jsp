<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>知孚IP</title>
	<link href="css/brand_Wanted.css" rel="stylesheet" type="text/css" />
  <link href="images/index/ICO32.ico" rel="shortcut icon" type="image/x-icon" />
  <script type="text/javascript">
    var click01;
    function ShowDiv(e){
        click01=new String(e.id);
        var Func=click01.toUpperCase();
        document.getElementById(Func).style.display="block";
        document.getElementById("N").style.display="block";
        document.getElementById("content_middle_left").style.display="block";
    }
    function ClearDiv(e){
        click01=new String(e.id);
        var Func=click01.toUpperCase();
        document.getElementById(Func).style.display="none";
        document.getElementById("N").style.display="none";
        document.getElementById("content_middle_left").style.display="none";
    }
    function showall(){
        document.getElementById("content_middle_left").style.display="block";
    }
    function hideall(){
        document.getElementById("content_middle_left").style.display="none";
    }
    function aonchick(){
    	
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
    <div class="content">
      <div class="sale_box left">
        <p class="nav">当前位置：商标购买 > 发布求购</p>
        <form action="${pageContext.request.contextPath}/items/insertItems.action"  method="post">
         <ul>
            <p>商标求购信息填写</p>
          	 <li><span style="color: red">${message }</span><br />
            <li><span>求购关键字：</span><br />
            <input id="name" name="name" type="text" placeholder="输入购买商标的关键字，如：龙；LONG；福满；福；满；" /></li>
            <li><span>商标用途：</span><br />
            <input name="function" type="text" placeholder="描述商标用途，如  茶水杯，多个用“，”隔开" /></li>
            <li><span>预算：</span><br />
            <input name="budget" type="text" placeholder="请填写准确数字或大概范围" /></li>
            <li><span>商标分类：</span><br />
            
            <div class="sort"> <!-- icategory 部分-->
                <select name="icategory">
                	<c:forEach items="${category }" var="c">
                		<option value="${c.cname }">${c.cname }</option>
                	</c:forEach>
                </select>
            </div>
              <!--
              <div class="sort_all">
              	<a href="#">第01类 化工原料</a><a href="#">第02类 颜料油漆</a><a href="#">第03类 日化用品</a>
                <a href="#">第03类 燃料油脂</a><a href="#">第04类 医药用品</a><a href="#">第06类 金属材料</a>
                <a href="#">第07类 机械设备</a><a href="#">第08类 手工器械</a><a href="#">第09类 科学仪器</a>
                <a href="#">第10类 医疗器械</a><a href="#">第11类 灯具空调</a><a href="#">第12类 运输工具</a>
                <a href="#">第13类 军火烟火</a><a href="#">第14类 珠宝钟表</a><a href="#">第15类 乐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;器</a>
                <a href="#">第16类 办公用品</a><a href="#">第17类 橡胶制品</a><a href="#">第18类 皮革皮具</a>
                <a href="#">第19类 建筑材料</a><a href="#">第20类 家具用品</a><a href="#">第21类 厨房洁具</a>
                <a href="#">第22类 绳网袋蓬</a><a href="#">第23类 纱 &nbsp;线 &nbsp;丝</a><a href="#">第24类 布料床单</a>
                <a href="#">第25类 服装鞋帽</a><a href="#">第26类 纽扣拉链</a><a href="#">第27类 地毯席垫</a>
                <a href="#">第28类 健身器材</a><a href="#">第29类 食&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;品</a><a href="#">第30类 方便食品</a>
                <a href="#">第31类 饲料种籽</a><a href="#">第32类 啤酒饮料</a><a href="#">第33类 酒精饮品</a>
                <a href="#">第34类 烟草烟具</a><a href="#">第35类 广告销售</a><a href="#">第36类 金融物管</a>
                <a href="#">第37类 建筑修理</a><a href="#">第38类 通讯服务</a><a href="#">第39类 运输贮藏</a>
                <a href="#">第40类 材料加工</a><a href="#">第41类 教育娱乐</a><a href="#">第42类 网站服务</a>
                <a href="#">第43类 餐饮住宿</a><a href="#">第44类 医疗园艺</a><a href="#">第45类 社会服务</a>
              </div>
              -->
              <br />
              <br />
              <br />
              <br />
            </li>
    				<li><span>商标类型：</span><br />
            	<div class="sort">
            		<select name="iprotfolio">
            			<option value="中文">中文</option>
            			<option value="英文">英文</option>
            			<option value="中文+英文">中文+英文</option>
            			<option value="图形">图形</option>
            			<option value="组合">组合</option>
            			<option value="数字">数字</option>
            			<option value="拼音">拼音</option>
            			<option value="英文+图形">英文+图形</option>
            			<option value="中文+图形">中文+图形</option>
            		</select>
              </div>
              <br />
              <br />
              <br />
        			<br />
            <li><span>商标字数：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>电商相关：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>商标注册年限：</span><br />
            <select name="zishu">
              <option value="1字">1字</option>
              <option value="2字" selected>2字</option>
              <option value="3字">3字</option>
              <option value="4字">4字</option>
              <option value="5字">5字</option>
              <option value="不限">不限</option>
            </select>
            <select name="ec">
              <option value="淘宝" selected>淘宝</option>
              <option value="京东">京东</option>
              <option value="当当">当当</option>
              <option value="其他">其他</option>
            </select>
            <select name="year">
              <option value="1年">1年</option>
              <option value="2年">2年</option>
              <option value="3年" selected>3年</option>
              <option value="4年">4年</option>
              <option value="5年">5年</option>
              <option value="不限">不限</option>
            </select>
            </li>
            <li><span>详细描述：</span><br />
            	<textarea name="context" class="text" type="text" placeholder="输入您的详细需求" ></textarea>
            </li>
    			<li><span>联系人：</span><input name="linkman" type="text" placeholder="请填写您的姓名" /><br /></li>
            	<li><span>联系方式：</span><input name="tel" type="text" placeholder="请填写联系方式 " /><br /></li>
            	<li><input class="submit" type="submit" value="立即提交" onclick="submitItems();"/></li>
         </ul>
        </form>
      </div>
      
      <div class="sale_process right">
          <div class="nav">商标购买流程：</div>
          <div class="process">
            <p><span>1</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册知孚账号</p><br />
            <p><span>2</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布求购信息</p><br />
            <p><span>3</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;等待信息审核</p><br />
            <p><span>4</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;匹配相关商标</p><br />
            <p><span>5</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;同站交接商标</p><br />
            <p><span>6</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成功购买商标</p>
          </div>
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
      <li><a href="#">如何注册</a></li>
      <li><a href="#">购买流程</a></li>
      <li><a href="#">商品咨询</a></li>
    </ul>
    <ul class="right">
      <p>知识产权与知识</p><br />
      <li><a href="#">版权登记知识</a></li>
      <li><a href="#">专利申请知识</a></li>
      <li><a href="#">商标注册知识</a></li>
    </ul>
    <ul class="safety">
      <p>安全服务</p><br />
      <li><a href="#">如何设置密码</a></li>
      <li><a href="#">如何绑定账号</a></li>
      <li><a href="#">服务条款</a></li>
    </ul>
    <ul class="help">
      <p>帮助中心</p><br />
      <li><a href="#">在线业务办理</a></li>
      <li><a href="#">顾问信息展示</a></li>
      <li><a href="#">业务节点信息</a></li>
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
    	<a href="#">关于我们</a> |
      <a href="#">联系我们</a> |
      <a href="#">问题反馈</a> |
      <a href="#">友情链接</a>
    </div>
  </div>
</body>
</html>