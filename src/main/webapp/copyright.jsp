<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>知孚IP</title>
	<link href="css/copyright.css" rel="stylesheet" type="text/css" />
  <link href="img/ICO32.ico" rel="shortcut icon" type="image/x-icon" />
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
        function Showfirst(e)
        {
            Twocolorchange(e);
            document.getElementById("T1").style.display="block";
            document.getElementById("T2").style.display="none";
            document.getElementById("A1").style.display="block";
            document.getElementById("A2").style.display="none";
            document.getElementById("C1").style.display="block";
            document.getElementById("C2").style.display="none";
            document.getElementById("E1").style.display="block";
            document.getElementById("E2").style.display="none";
            document.getElementById("D1").style.display="block";
            document.getElementById("D2").style.display="none";
        }
        function Showsecond(e)
        {   Twocolorchange(e);
            document.getElementById("T1").style.display="none";
            document.getElementById("T2").style.display="block";   
            document.getElementById("A1").style.display="none";
            document.getElementById("A2").style.display="block";
            document.getElementById("C1").style.display="none";
            document.getElementById("C2").style.display="block";
            document.getElementById("E1").style.display="none";
            document.getElementById("E2").style.display="block";
            document.getElementById("D1").style.display="none";
            document.getElementById("D2").style.display="block";
        }
        var click02;
        function Twocolorchange(e)
        {    
            e.style.color="red";
            if(parseInt(e.id)%2==0)
            {        
                click02=parseInt(e.id)-1;
            }
            else
            {
                click02=parseInt(e.id)+1;
            }
            document.getElementById(click02).style.color="black";
        }
        function Threecolorchange(e)
        {    
            e.style.color="red";
            if(parseInt(e.id)%3==0)
            {
                document.getElementById((parseInt(e.id)-1)).style.color="black";
                document.getElementById((parseInt(e.id)-2)).style.color="black";
            }
            else if(parseInt(e.id)%3==2)
            {
                document.getElementById((parseInt(e.id)-1)).style.color="black";
                document.getElementById((parseInt(e.id)+1)).style.color="black";
            }
            else
            {
                document.getElementById((parseInt(e.id)+1)).style.color="black";
                document.getElementById((parseInt(e.id)+2)).style.color="black";
            }
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
        			<span class="active">&nbsp &nbsp用户： ${sessionScope.user_session.username}<a href="${pageContext.request.contextPath}/logut.action">退出</a></apan>
        		</c:otherwise>
        	</c:choose>
        </ul>
        <ul class="detail right">
        	<li><a href="${pageContext.request.contextPath}/finndUserInfo.action">个人信息</a></li>
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
    	<a href="#"><p>商标主题</p></a>
    </div>
    <ul>
      <li><a class="active" href="${pageContext.request.contextPath}/toIndex.action">首页</a></li>
      <li><a href="${pageContext.request.contextPath}/listBypage.action">精品商标转让</a></li>
      <li><a href="brand_Wanted.jsp">商标购买</a></li>
      <li><a href="${pageContext.request.contextPath}/insertDemand.action">商标注册</a></li>
      <li><a href="brand_Query.jsp">商标查询</a></li>
      <li><a href="${pageContext.request.contextPath}/sort.action">商标分类</a></li>
      < <li><a href="${pageContext.request.contextPath}/toIndex.action">版权专利</a></li>

    </ul>
  </div>
  <!--分割线-->
  <div id="Parting line" style="width:100%; height:0; border:1px solid #eb0e1f; margin:0 auto;"></div>
  <!--中间内容-->
  <div id="content" >
    <div class="content_bg">
        <div class="content_text">
            <div class="content_text_div">
                <p>选择类型：</p>
                <div class="text_border" id="1" onclick="Showfirst(this)" style="color:red;">专利申请</div>
                <div class="text_border" id="2" onclick="Showsecond(this)">版权申请</div>
            </div>
            <div class="content_text_div" style="display:block;" id="A1">
                <p>业务类型：</p>
                <div class="text_border" id="7" onclick="Threecolorchange(this)" style="color:red;">外观专利</div>
                <div class="text_border" id="8" onclick="Threecolorchange(this)">实用新型专利</div>
                <div class="text_border" id="9" onclick="Threecolorchange(this)">发明专利</div>
            </div>
            <div class="content_text_div" style="display:none;" id="A2">
                <p>业务类型：</p>
                <div class="text_border" style="color:red;" id="5" onclick="Twocolorchange(this)">作品著作权</div>
                <div class="text_border" id="6" onclick="Twocolorchange(this)">软件著作权</div>
            </div>
            <div class="content_text_div">
                <p>办理类型：</p>
                <div class="text_border" id="3" style="color:red;" onclick="Twocolorchange(this)">标准申请</div>
                <div class="text_border" id="4" onclick="Twocolorchange(this)">急速申请</div>
            </div>
        </div>
        <div class="content_img">   
            联系我们            
        </div>
        <div class="content_download" id="T1" style="display:block;">   
            <a href="#">附件1：专利申请优先审查请求书</a><br/>
            <a href="#">附件2：复查、无效宣告程序优先审查请求书</a>         
        </div>
        <div class="content_download" id="T2" style="display:none;">   
            <a href="#">附件1：版权申请表</a>         
        </div>
        <div class="content_middle">
            <div class="content_middle_left"  id="content_middle_left" style="display:none;" onmouseover="showall()" onmouseout="hideall()">
                <div class="content_middle_top" >
                    <ul class="content_info" id="n">
                        <li id="n1"  onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                            <h2 class="content_title"><a href="#">服装鞋帽（25类）</a></h2>
                            <ul class="content_infos">
                                <li ><a href="#">男装</a></li>
                                <li><a href="#">女装</a></li>
                                <li><a href="#">童装</a></li>
                                <li><a href="#">裤子</a></li>
                                <li><a href="#">鞋袜</a></li>
                            </ul>
                        </li>
                        <li id="n2" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                            <h2 class="content_title"><a href="#">日化用品（3类）</a></h2>
                            <ul class="content_infos">
                                <li><a href="#">香皂</a></li>
                            <li><a href="#">洗面奶</a></li>
                            <li style="width:70px;"><a href="#" >美容面膜</a></li>
                            <li><a href="#">洗发水</a></li>                          
                            </ul>
                        </li>
                    <li id="n3" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="#">酒精饮品（30类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">白酒</a></li>
                            <li><a href="#">鸡尾酒</a></li>
                            <li><a href="#">蜂蜜酒</a></li>
                            <li style="width:70px;"><a href="#">酒精饮品</a></li>
                        </ul>
                    </li>
                    <li id="n4" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="#">食品（9类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">肉</a></li>
                            <li><a href="#">牛奶</a></li>
                            <li><a href="#">奶粉</a></li>
                            <li><a href="#">食用油</a></li>
                            <li><a href="#">坚果</a></li>
                        </ul>
                    </li>
                    <li id="n5" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="#">方便食品（20类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">咖啡</a></li>
                            <li><a href="#">面包</a></li>
                            <li><a href="#">饼干</a></li>
                            <li><a href="#">蜂蜜</a></li>
                            <li><a href="#">蛋糕</a></li>
                        </ul>
                    </li>
                    <li id="n6" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)"> 
                        <h2 class="content_title"><a href="#">家具用品</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">床</a></li>
                            <li><a href="#">茶几</a></li>
                            <li><a href="#">沙发</a></li>
                            <li><a href="#">座椅</a></li>
                            <li><a href="#">床垫</a></li>
                        </ul>
                    </li>
                    <li id="n7" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)"> 
                        <h2 class="content_title"><a href="#">医药用品</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">减肥药</a></li>
                            <li><a href="#">维他命</a></li>
                            <li><a href="#">药酒</a></li>
                        </ul>
                    </li>
                    </ul>
                </div>
                <div class="content_middle_bottom"><a href="brand_Transfer.jsp"><img alt="more" title="精品商标转让" src="images/index/content_bottom.jpg" /></a></div>
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
    <div class="show_list">
            <div class="show_list_all">
                <div class="show_list_top">
                        <div class="show_list_top_title">
                        </div>
                </div>
                <div class="show_list_bottom" id="C1" style="display:block;">
                    <p>发明专利：是指对产品、方法或者其改进所提出的新的技术方案。</p>
                    <p>实用新型专利：是指对产品的形状、构造或者其结合所提出的适于实用的新的技术方案</p>
                    <p>外观专利：是指对产品的形状、图案或者其结合以及色彩与形状、图案的结合所作出的富有美感并适于工业应用的新设计</p>
                </div>
                <div class="show_list_bottom" id="C2" style="display:none;">
                    <p>作品著作权：文字作品;口述作品;艺术作品;美术;建筑作品;摄影作品;电影作品和以类似摄制电影的方法创作的作品;设计图、地图、示意图等图形作品和模型作品;法律、行政法规规定的其他作品。</p>
                    <p>软件著作权：计算机软件</p>
                </div>
            </div>
            <div class="show_list_all">
                <div class="show_list_top">
                    <div class="show_list_top_title" style="background-image:url(images/copyright/show_list_bg_2.png); background-position-y:11px;">                     
                    </div>
                </div>
                <div class="show_list_bottom" >
                    <div class="show_list_bg_bottom" id="D1" style="display:block; background-image:url(images/copyright/show_list_bg_bottom_1.png); background-position-x: 20px;">
                    </div>
                    <div class="show_list_bg_bottom" id="D2" style="display:none; background-image:url(images/copyright/show_list_bg_bottom_2.png); background-position-x: 140px; height:160px;">
                    </div>
                </div>
            </div>
            <div class="show_list_all" style="height:1000px;">
                <div class="show_list_top">
                    <div class="show_list_top_title" style="background-image:url(images/copyright/show_list_bg_3.png); background-position-y:11px;">                     
                    </div>
                </div>
                <div class="show_list_bottom_s" id="E1" style="display:block;">
                    <div class="show_list_bottom_nav">
                            <div class="show_list_bottom_left"> 
                                <p>一对一专利顾问服务 专业专利检索</p>                              
                            </div>
                    </div>
                    <div class="show_list_bottom_nav">
                            <div class="show_list_bottom_left" style="background-image:url(images/copyright/show_list_bg_left_2.png)">                               
                                <p>专利挖掘与布局分析 专利文件撰写</p>
                            </div>                     
                    </div>
                    <div class="show_list_bottom_nav">
                            <div class="show_list_bottom_left" style="background-image:url(images/copyright/show_list_bg_left_3.png)">                               
                                <p>当天递交专利申请 申请过程监控和疑难处理</p>
                            </div>                       
                    </div>
                    <div class="show_list_bottom_nav">
                            <div class="show_list_bottom_left" style="background-image:url(images/copyright/show_list_bg_left_4.png)">                               
                                <p>流程跟进及时反馈 专利检测服务</p>
                            </div>             
                    </div>
                </div>
                <div class="show_list_bottom_s" id="E2" style="display:none;">
                    <div class="show_list_bottom_nav">
                            <div class="show_list_bottom_left"> 
                                <p>一对一专利顾问服务</p>                              
                            </div>
                    </div>
                    <div class="show_list_bottom_nav">
                            <div class="show_list_bottom_left" style="background-image:url(images/copyright/show_list_bg_left_2.png)">                               
                                <p>著作权分析布局 著作权稿文件撰写</p>
                            </div>                     
                    </div>
                    <div class="show_list_bottom_nav">
                            <div class="show_list_bottom_left" style="background-image:url(images/copyright/show_list_bg_left_3.png)">                               
                                <p>当天递交申请文件 流程跟进及时反馈</p>
                            </div>                       
                    </div>
                    <div class="show_list_bottom_nav">
                            <div class="show_list_bottom_left" style="background-image:url(images/copyright/show_list_bg_left_4.png)">                               
                                <p>建立专门的著作权管理档案</p>
                            </div>             
                    </div>
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