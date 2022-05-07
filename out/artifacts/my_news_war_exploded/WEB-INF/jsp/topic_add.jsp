<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<div style="margin: 400px auto;">
	<h1 id="opt_type">
		添加主题：
	</h1>
	<form action="" method="post">
		<p>
			<label>
				主题名称
			</label>
			<input name="tname" type="text" class="opt_input" />
		</p>
		<input name="action" type="hidden" value="addtopic">
		<input type="submit" value="提交" class="opt_sub" />
		<input type="reset" value="重置" class="opt_sub" />
	</form>
	<h3><a href="/Topic/topicList">返回编辑主题</a></h3>
</div>

