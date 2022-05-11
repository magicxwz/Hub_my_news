<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
<div style="margin: 400px 400px;">
	<h1 id="opt_type">
		修改主题：
	</h1>
	<form action="javascript:void (0);" method="post">
		<p>
			<label>
				主题名称
			</label>
			<input name="tname" type="text"  value="${topic.tname}"/>
		</p>
		<input name="tid" type="hidden" value="${topic.tid}">
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
			$(o).val(" 修改 ");
			wait = 60;
		} else {
			$(o).attr("disabled", true);
			o.val(wait + "秒后重新修改");
			wait--;
			setTimeout(function () {time(o);},1000);
		}
	}
	/*点击提交后提交数据*/
	$("[name='submit']").click(function (){
		let tname=$("[name='tname']").val();
		let tid=$("[name='tid']").val();
		console.log(tname)
		if (tname==""){
			alert("主题不能为空！")
		}else{
			$.ajax({
				"url":"/Topic/topicupdateg",//提交链接
				"type":"post",//提交类型
				"data":{
					"tname":tname,
					"tid":tid
				},//提交值
				"dataType":"text",//返回类型
				"success":function(data){
					console.log(data)
					if (data){
						alert("提交成功！");
						let aa=$("[name='submit']");
						time(aa);
					}else{
						alert("1提交失败！");
					}
				},
				"error":function(){//成功与否运行
					alert("2提交失败！");
					console.log("查询失败");
				}
			})
		}
	})
})
</script>