<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
<div style="margin: 400px 400px;">
	<h1 id="opt_type">
		������⣺
	</h1>
	<form action="javascript:void (0);" method="post">
		<p>
			<label>
				��������
			</label>
			<input name="tname" type="text" class="opt_input" />
		</p>
		<input name="action" type="hidden" value="addtopic">
		<input name="submit" type="submit" value="�ύ" class="opt_sub" />
		<input type="reset" value="����" class="opt_sub" />
	</form>
	<h3><a href="/Topic/topicList">���ر༭����</a></h3>
	<h3><a href="/News/newselect" class="login_link">������ҳ</a></h3>
</div>
<script type="text/javascript">
$(function (){
	/*��Լ򵥵�ʱ�����ư�ť*/
	var wait = 30;
	function time(o) {
		if (wait == 0) {
			$(o).attr("disabled", false);
			$(o).val(" �ύ ");
			wait = 60;
		} else {
			$(o).attr("disabled", true);
			o.val(wait + "��������ύ");
			wait--;
			setTimeout(function () {time(o);},1000);
		}
	}
	/*����ύ���ύ����*/
	$("[name='submit']").click(function (){
		let tname=$("[name='tname']").val();
		console.log(tname)
		$.ajax({
			"url":"/Topic/topic_adds",//�ύ����
			"type":"post",//�ύ����
			"data":{
				"tname":tname
			},//�ύֵ
			"dataType":"text",//��������
			"success":function(data){
				if (data=="a"){
					alert("�ύ�ɹ���");
					$("[name='tname']").val("");
					let aa=$("[name='submit']");
					time(aa);
				}else{
					alert("�ύʧ�ܣ�");
				}
			},
			"error":function(){//�ɹ��������
				alert("�ύʧ�ܣ�");
				console.log("��ѯʧ��");
			}
		})
	})
})
</script>