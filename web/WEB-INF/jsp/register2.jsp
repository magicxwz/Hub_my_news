<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>注册页面</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
	</head>
	<body>
		<FORM action="javascript:void (0);" method="post" name="myform">
			<TABLE border="0" cellpadding="0" cellspacing="0" align="center">
				<TR>
					<TD height="108" colspan="2"><IMG src="${pageContext.request.contextPath}/images/top.jpg"></TD>
				</TR>
				<TR>
					<TD width="107" height="36">用户名：</TD>
					<TD width="524"><INPUT name="uname" type="text" maxlength="16" value=""><span id="yhm">只能输入字母或数字，4-16个字符</span></TD>
				</TR>
				<TR>
					<TD width="107" height="36">密码：</TD>
					<TD width="524"><INPUT name="upwd" type="password" maxlength="20" value=""><span id="mima">密码长度6-20位</span></TD>
				</TR>
				<TR>
					<TD width="107" height="36">确认密码：</TD>
					<TD width="524"><INPUT name="upwds" type="password"maxlength="20"><span id="qrmm"></span></TD>
				</TR>
				<TR>
					<TD><a href="/News/newselect" class="login_link">返回首页</a></TD>
					<TD colspan="1" align="center"><INPUT name="submit" type="submit" value="注册"></TD>
				</TR>
			</TABLE>
		</FORM>
	</body>
</html>
<script type="text/javascript">
	$(function (){
		/*$("[name='uname']").focus(function (){
			setTimeout(function (){
				console.log("点击进来了")
				let uname=$("[name='uname']").val();
				console.log("获取"+uname)
				cx(uname);
			},10000)
		})*/
		$("[name='uname']").blur(function (){
			setTimeout(function (){
				console.log("失去进来了")
				let uname=$("[name='uname']").val();
				console.log("获取"+uname)
				cx(uname);
			},1000)
		})
		$("[name='upwds']").click(function (){
			setInterval(function (){
				let pwd=$("[name='upwd']").val();
				let pwds=$("[name='upwds']").val();
				if (pwd==pwds){
					$("#qrmm").html("<span style='color: lawngreen;'>√</span>");
				}else{
					$("#qrmm").html("<span style='color: red;'>密码与上面不符合</span>");
				}
			},1500);
		})
		$("[name='submit']").click(function (){
			zc();
		})
	})
	function cx(uname){
		$.ajax({
			"url":"/Topic/yhmcx/"+uname,//提交链接
			"type":"post",//提交类型
			"data":{},//提交值
			"dataType":"text",//返回类型
			"success":function(data){//返回类型的最终值
				console.log("2进来了"+data)
				console.log(typeof(data))
				if (data==="tru"){
					$("#yhm").html("<span style='color: lawngreen;'>可以注册</span>");
				}else{
					$("#yhm").html("<span style='color: red;'>用户名重复</span>");
				}
			},
			"error":function(){//成功与否运行
				console.log("查询失败");
			}
		})
	}
	function zc(){
		let uname=$("[name='uname']").val();
		let upwd=$("[name='upwd']").val();
		console.log(uname)
		console.log(upwd)
		$.ajax({
			"url":"/Topic/yhzc",
			"type":"post",//提交类型
			"data":{
				"uname":uname,
				"upwd":upwd
			},//提交值
			"dataType":"text",//返回类型
			"success":function(data){//返回类型的最终值
				console.log("2进来了")
				console.log(data)
				if (data){
					alert("注册成功",location.href="/News/newselectzc/"+uname);
					setTimeout(function (){
						location.href="/News/newselectzc/"+uname;
					},1000)
				}else{
					alert("注册失败");
				}
			},
			"error":function(){//成功与否运行
				console.log("查询失败");
			}
		})
	}
</script>