<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
<div style="margin: 400px 400px;">
	<h1 id="opt_type">
		�޸����⣺
	</h1>
	<form action="javascript:void (0);" method="post">
		<p>
			<label>
				��������
			</label>
			<input name="tname" type="text"  value="${topic.tname}"/>
		</p>
		<input name="tid" type="hidden" value="${topic.tid}">
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
			$(o).val(" �޸� ");
			wait = 60;
		} else {
			$(o).attr("disabled", true);
			o.val(wait + "��������޸�");
			wait--;
			setTimeout(function () {time(o);},1000);
		}
	}
	/*����ύ���ύ����*/
	$("[name='submit']").click(function (){
		let tname=$("[name='tname']").val();
		let tid=$("[name='tid']").val();
		console.log(tname)
		if (tname==""){
			alert("���ⲻ��Ϊ�գ�")
		}else{
			$.ajax({
				"url":"/Topic/topicupdateg",//�ύ����
				"type":"post",//�ύ����
				"data":{
					"tname":tname,
					"tid":tid
				},//�ύֵ
				"dataType":"text",//��������
				"success":function(data){
					console.log(data)
					if (data){
						alert("�ύ�ɹ���");
						let aa=$("[name='submit']");
						time(aa);
					}else{
						alert("1�ύʧ�ܣ�");
					}
				},
				"error":function(){//�ɹ��������
					alert("2�ύʧ�ܣ�");
					console.log("��ѯʧ��");
				}
			})
		}
	})
})
</script>