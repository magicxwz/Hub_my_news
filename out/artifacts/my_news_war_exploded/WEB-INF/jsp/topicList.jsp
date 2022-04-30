<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>管理后台</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header">
	<div id="welcome">欢迎使用新闻管理系统！</div>
    <div id="nav">
    	<div id="logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="新闻中国" /></div>
        <div id="a_b01"><img src="${pageContext.request.contextPath}/images/a_b01.gif" alt="" /></div>
    </div>
</div>

<div id="admin_bar">
<div id="status">管理员： 登录  &#160;&#160;&#160;&#160;    <a href="#">login out</a></div>
    <div id="channel">
    	
    </div>
</div>

<div id="main">
	<div id="opt_list">
    	<ul>
        	<li><a href="#">添加新闻</a></li>
            <li><a href="#">编辑新闻</a></li>
            <li><a href="#">查找新闻</a></li>
            <li><a href="#">添加主题</a></li>
            <li><a href="#">编辑主题</a></li>
        </ul>
    </div>
    <div id="opt_area">
    	


	



<script language="javascript">
	function clickdel(){
		return confirm("删除请点击确认");
	}
	
</script>

<ul class="classlist"> 	
		<li> 
		    国内
		    <span>&nbsp;&nbsp;&nbsp;&nbsp; 
			    <a href="#">修改</a> &nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="#">删除</a> 
		    </span> 
		</li>
                <li> 
		    国外
		    <span>&nbsp;&nbsp;&nbsp;&nbsp; 
			    <a href="#">修改</a> &nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="#">删除</a> 
		    </span> 
		</li>
         <li> 
		    军事
		    <span>&nbsp;&nbsp;&nbsp;&nbsp; 
			    <a href="#">修改</a> &nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="#">删除</a> 
		    </span> 
		</li>
        <li> 
		    体育
		    <span>&nbsp;&nbsp;&nbsp;&nbsp; 
			    <a href="#">修改</a> &nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="#">删除</a> 
		    </span> 
		</li>
		<li> 
		    娱乐
		    <span>&nbsp;&nbsp;&nbsp;&nbsp; 
			    <a href="#">修改</a> &nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="#">删除</a> 
		    </span> 
		</li>
        <li> 
		    教育
		    <span>&nbsp;&nbsp;&nbsp;&nbsp; 
			    <a href="#">修改</a> &nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="#">删除</a> 
		    </span> 
		</li>
		<li> 
		    科技
		    <span>&nbsp;&nbsp;&nbsp;&nbsp; 
			    <a href="#">修改</a> &nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="#">删除</a> 
		    </span> 
		</li>
        <li> 
		    房产
		    <span>&nbsp;&nbsp;&nbsp;&nbsp; 
			    <a href="#">修改</a> &nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="#">删除</a> 
		    </span> 
		</li>
	
</ul>
    	
    </div>
</div>

<div id="site_link">
	<a href="#">关于我们</a><span>|</span>
    <a href="#">Aboue Us</a><span>|</span>
    <a href="#">联系我们</a><span>|</span>
    <a href="#">广告服务</a><span>|</span>
    <a href="#">供稿服务</a><span>|</span>
    <a href="#">法律声明</a><span>|</span>
    <a href="#">招聘信息</a><span>|</span>
    <a href="#">网站地图</a><span>|</span>
    <a href="#">留言反馈</a>
</div>

<div id="footer">
	<p class="">24小时客户服务热线：010-68988888  &#160;&#160;&#160;&#160;  <a href="#">常见问题解答</a>  &#160;&#160;&#160;&#160;  新闻热线：010-627488888<br />
	文明办网文明上网举报电话：010-627488888  &#160;&#160;&#160;&#160;  举报邮箱：<a href="#">jubao@jb-aptech.com.cn</a></p>
    <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
	新闻中国   版权所有</p>	
</div>


</body>
</html>