<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>新闻中国</title>
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body >
<div style="margin:0 auto;width:1000px">
<div id="header">
	<div id="top_login">
        <form id="login" method="post" action="login.jsp">
        	<label>登录名</label><input type="text" name="username" value="" class="login_input" />
            <label>密&#160;&#160;码</label><input type="password" name="upwd" value="" class="login_input" />
            <input type="submit" class="login_sub" value="登录" />
        </form>
        <img src="${pageContext.request.contextPath}/images/friend_logo.gif" alt="Google" id="friend_logo" />
    </div>
    <div id="nav">
    	<div id="logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="新闻中国" /></div>
        <div id="mainnav">
        	<ul>			
                <li class="headLi"><a href="#"><b>新闻</b></a></li>
                <li><a href="#">军事</a></li>
                <li><a href="#">社会</a></li>
                <li class="leftLineTop"><a href="#"><b>体育</b></a></li>
                <li><a href="#">NBA</a></li>
                <li><a href="#">彩票</a></li>
                <li class="leftLineTop"><a href="#"><b>博客</b></a></li>
                <li><a href="#">草根</a></li>
                <li><a href="#">热文</a></li>
                <li class="leftLineTop"><a href="#"><b>读书</b></a></li>
                <li><a href="#">教育</a></li>
                <li><a href="#">健康</a></li>
                <li class="leftLineTop"><a href="#"><b>空间</b></a></li>
                <li><a href="#">邮箱</a></li>
                <li><a href="#">UC</a></li>
                <li class="leftLineTop"><a href="#"><b>城市</b></a></li>
                <li><a href="#">广东</a></li>
                <li><a href="#">上海</a></li>
                <li class="leftLine broad"><a href="#">高尔夫</a></li>
                <li><a href="#">下载</a></li>
                <li><a href="#">导航</a></li>
            </ul>
            <ul>			
                <li class="headLi"><a href="#"><b>财经</b></a></li>
                <li><a href="#">股票</a></li>
                <li><a href="#">基金</a></li>
                <li class="leftLine"><a href="#"><b>娱乐</b></a></li>
                <li><a href="#">明星</a></li>
                <li><a href="#">音乐</a></li>
                <li class="leftLine"><a href="#" class="linkRed01"><b>视频</b></a></li>
                <li><a href="#" class="linkRed01">播客</a></li>
                <li><a href="#" class="linkRed01">大片</a></li>
                <li class="leftLine"><a href="#"><b>女性</b></a></li>
                <li><a href="#">星座</a></li>
                <li><a href="#">育儿</a></li>
                <li class="leftLine"><a href="#"><b>论坛</b></a></li>
                <li><a href="#">圈子</a></li>
                <li><a href="#">相册</a></li>
                <li class="leftLine"><a href="#"><b>生活</b></a></li>
                <li><a href="#">旅游</a></li>
                <li><a href="#">商城</a></li>
                <li class="leftLine broad"><a href="#">分　类</a></li>
                <li><a href="#">天气</a></li>
                <li><a href="#">爱问</a></li>
            </ul>		
            <ul>			
                <li class="headLi"><a href="#"><b>科技</b></a></li>
                <li><a href="#">手机</a></li>
                <li><a href="#">数码</a></li>
                <li class="leftLineBot"><a href="#"><b>汽车</b></a></li>
                <li><a href="#">购车</a></li>
                <li><a href="#">搜车</a></li>
                <li class="leftLineBot"><a href="#"><b>房产</b></a></li>
                <li><a href="#">地产</a></li>
                <li><a href="#">家居</a></li>
                <li class="leftLineBot"><a href="#"><b>乐库</b></a></li>
                <li><a href="#">尚品</a></li>
                <li><a href="#">宠物</a></li>
                <li class="leftLineBot"><a href="#"><b>交友</b></a></li>
                <li><a href="#">游戏</a></li>
                <li><a href="#">UT</a></li>
                <li class="leftLineBot"><a href="#"><b>短信</b></a></li>
                <li style="padding-top:3px;line-height:15px;"><a href="#">彩铃</a></li>
                <li><a href="#">彩信</a></li>
                <li class="leftLineBot broad"><a href="#">音悦汇</a></li>
                <li><a href="#">公益</a></li>
                <li><a href="#">爱答</a></li>
            </ul>
        </div>
        <!--mainnav end-->
    </div>
</div>

<div id="container">
	<div class="sidebar">
    	<h1><img src="${pageContext.request.contextPath}/images/title_1.gif" alt="国内新闻" /></h1>
        <div class="side_list">
        	<ul>
        	  <li> <a href='#'><b> 重庆涉黑富豪黎强夫妇庭审答辩言辞相互矛盾 </b></a> </li>
              <li> <a href='#'><b> 发改委：4万亿投资计划不会挤占民间投资空间 </b></a> </li>
              <li> <a href='#'><b> 河南2个乡镇政绩报告内容完全一致引关注 </b></a> </li>
        	</ul>
        </div>
        
        <h1><img src="${pageContext.request.contextPath}/images/title_2.gif" alt="国际新闻" /></h1>
        <div class="side_list">
        	<ul>
        	  <li> <a href='#'><b> 日本首相鸠山首次全面阐述新政府外交政策 </b></a> </li>
              <li> <a href='#'><b> 黎巴嫩以色列再次交火互射炮弹 </b></a> </li>
              <li> <a href='#'><b> 伊朗将于30日前就核燃料供应方案作出答复 </b></a> </li>
              <li> <a href='#'><b> 与基地有关组织宣称对巴格达连环爆炸负责 </b></a> </li>
        	</ul>
        </div>
        
        <h1><img src="${pageContext.request.contextPath}/images/title_3.gif" alt="娱乐新闻" /></h1>
        <div class="side_list">
        	<ul>
        	  <li> <a href='#'><b> 施瓦辛格启动影视业回迁计划 推进加州经济复苏 </b></a> </li>
              <li> <a href='#'><b> 《沧海》导演回应观众质疑 自信能超越《亮剑》 </b></a> </li>
              <li> <a href='#'><b> 《海角七号》导演新片开机 吴宇森等出席 </b></a> </li>
              <li> <a href='#'><b> 《四大名捕》敦煌热拍 八主演飙戏火花四溅 </b></a> </li>
        	</ul>
        </div>
    </div>
    <div class="main">
    	<div class="class_type"><img src="${pageContext.request.contextPath}/images/class_type.gif" alt="新闻中心" /></div>
    	<div class="content">
        	<ul class="class_date">
            	<li id="class_month">
                	<a href='index1.jsp?ntid=1'><b>
国内
</b></a>
<a href='index1.jsp?ntid=2'><b>
国际
</b></a>
<a href='index1.jsp?ntid=3'><b>
军事
</b></a>
<a href='index1.jsp?ntid=4'><b>
体育
</b></a>
<a href='index1.jsp?ntid=5'><b>
娱乐
</b></a>
<a href='index1.jsp?ntid=6'><b>
社会
</b></a>
<a href='index1.jsp?ntid=7'><b>
财经
</b></a>
<a href='index1.jsp?ntid=8'><b>
科技
</b></a>
<a href='index1.jsp?ntid=9'><b>
健康
</b></a>
<a href='index1.jsp?ntid=10'><b>
汽车
</b></a>
<a href='index1.jsp?ntid=11'><b>
教育
</b></a>
</li><li id="class_month">
<a href='index1.jsp?ntid=12'><b>
房产
</b></a>
<a href='index1.jsp?ntid=13'><b>
家居
</b></a>
<a href='index1.jsp?ntid=14'><b>
旅游
</b></a>
<a href='index1.jsp?ntid=15'><b>
文化
</b></a>
<a href='index1.jsp?ntid=16'><b>
其他
</b></a>
</li>
            
            </ul>
            <ul class="classlist">
                <c:forEach items="${news}" var="new" begin="0" end="4">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
                <c:forEach items="${news}" var="new" begin="5" end="9">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
                <c:forEach items="${news}" var="new" begin="0" end="5">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
                <c:forEach items="${news}" var="new" begin="0" end="5">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
                <c:forEach items="${news}" var="new" begin="0" end="5">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
            </ul>
    	</div>
        <div class="picnews">
        	<ul>
            	<li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture1.jpg" width="249" alt="" /></a><a href="#">国庆多变的发型</a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture2.jpg" width="249" alt="" /></a><a href="#">国庆多变的发型</a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture3.jpg" width="249" alt="" /></a><a href="#">国庆多变的发型</a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture4.jpg" width="249" alt="" /></a><a href="#">国庆多变的发型</a></li>
            </ul>
        </div>
    </div>
</div>

<div id="friend">
	<h1 class="friend_t"><img src="${pageContext.request.contextPath}/images/friend_ico.gif" alt="合作伙伴" /></h1>
    <div class="friend_list">
    	<ul>
        	<li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
            <li><a href="#">中国政府网</a></li>
        </ul>
    </div>
</div>

<div id="footer">
	<p class="">24小时客户服务热线：010-68988888  &#160;&#160;&#160;&#160;  <a href="#">常见问题解答</a>  &#160;&#160;&#160;&#160;  新闻热线：010-627488888<br />
	文明办网文明上网举报电话：010-627488888  &#160;&#160;&#160;&#160;  举报邮箱：<a href="#">jubao@jb-aptech.com.cn</a></p>
    <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
	新闻中国   版权所有</p>	
</div>

</div>
</body>
</html>