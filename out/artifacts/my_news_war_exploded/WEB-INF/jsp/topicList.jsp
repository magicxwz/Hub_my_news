<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>管理后台</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
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
	<div id="status">
		<c:if test="${uname eq null}">
			<form id="login" method="post" action="/News/dlu">
				<label>登录名</label><input type="text" name="username" value="" class="login_input" />
				<label>密&#160;&#160;码</label><input type="password" name="upwd" value="" class="login_input" />
				<input type="submit" class="login_sub" value="登录" />
				<a href="/Topic/register2">新人用户注册</a>
				<a href="/News/newselect" class="login_link">返回首页</a>
			</form>
		</c:if>
		<c:if test="${uname ne null}">
			<form id="login" method="#" action="javascript:void(0)">
				<label>用户：</label><label>${uname}&#160;&#160;欢迎登陆</label>&#160;&#160;<a href="/News/tdlu"> 登出 </a>
				<a href="/News/newselect" class="login_link">返回首页</a>
			</form>
		</c:if>
	</div>
    <div id="channel"></div>
</div>
<div id="main">
	<div id="opt_list">
    	<ul>
			<li><a href="/Topic/news_add">添加新闻</a></li>
			<li><a href="/Topic/admin">编辑新闻</a></li>
			<li><a href="/Topic/cahzaoxw">查找新闻</a></li>
			<li><a href="/Topic/topic_add">添加主题</a></li>
			<li><a href="/Topic/topicList">编辑主题</a></li>
        </ul>
    </div>
    <div id="opt_area">
		<ul class="classlist">
			<c:forEach items="${topics}" var="topi">
				<li>${topi.tname}<span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Topic/topicupdate/${topi.tid}">修改</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:sc(${topi.tid})">删除</a></span></li>
			</c:forEach>
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
<script type="text/javascript">
	//删除
	function sc(tid){
		let xbiao=$(this).index();
		console.log(xbiao);
		var flag=confirm("是否删除！")
		if (flag){
			$.ajax({
				"url":"/Topic/topicdelete/"+tid,//提交链接
				"type":"get",//提交类型
				"data":{},//提交值
				"dataType":"text",//返回类型
				"success":function(data){//返回类型的最终值
					console.log(data);
					console.log(typeof (data));
					if(data){
						$(".classlist li:eq("+xbiao+")").remove();
						console.log("删除成功");
					}else{
						alert("删除失败2")
					}
				},
				"error":function(){//成功与否运行
					alert("删除失败")
				}
			})
		}
	};
</script>