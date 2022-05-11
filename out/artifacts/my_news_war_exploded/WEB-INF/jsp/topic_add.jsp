<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
<div style="margin: 400px 400px;">
	<h1 id="opt_type">
		添加主题：
	</h1>
	<form action="javascript:void (0);" method="post">
		<p>
			<label>
				主题名称
			</label>
			<input name="tname" type="text" class="opt_input" />
		</p>
		<input name="action" type="hidden" value="addtopic">
		<input name="submit" type="submit" value="提交" class="opt_sub" />
		<input type="reset" value="重置" class="opt_sub" />
	</form>
	<h3><a href="/Topic/topicList">返回编辑主题</a></h3>
	<h3><a href="/News/newselect" class="login_link">返回首页</a></h3>
</div>
<script type="text/javascript">
$(function (){
	/*相对简单的时间限制按钮*/
	var wait = 30;
	function time(o) {
		if (wait == 0) {
			$(o).attr("disabled", false);
			$(o).val(" 提交 ");
			wait = 60;
		} else {
			$(o).attr("disabled", true);
			o.val(wait + "秒后重新提交");
			wait--;
			setTimeout(function () {time(o);},1000);
		}
	}
	/*点击提交后提交数据*/
	$("[name='submit']").click(function (){
		let tname=$("[name='tname']").val();
		console.log(tname)
		$.ajax({
			"url":"/Topic/topic_adds",//提交链接
			"type":"post",//提交类型
			"data":{
				"tname":tname
			},//提交值
			"dataType":"text",//返回类型
			"success":function(data){
				if (data=="a"){
					alert("提交成功！");
					$("[name='tname']").val("");
					let aa=$("[name='submit']");
					time(aa);
				}else{
					alert("提交失败！");
				}
			},
			"error":function(){//成功与否运行
				alert("提交失败！");
				console.log("查询失败");
			}
		})
	})
})
</script>