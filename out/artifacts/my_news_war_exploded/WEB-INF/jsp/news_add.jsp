<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>�������--�����̨</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
</head>
<body>
<div id="header">
  <div id="welcome">��ӭʹ�����Ź���ϵͳ��</div>
  <div id="nav">
    <div id="logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="�����й�" /></div>
    <div id="a_b01"><img src="${pageContext.request.contextPath}/images/a_b01.gif" alt="" /></div>
  </div>
</div>
<div id="admin_bar">
  <c:if test="${uname eq null}">
    <form id="login" method="post" action="/News/dlu">
      <label>��¼��</label><input type="text" name="username" value="" class="login_input" />
      <label>��&#160;&#160;��</label><input type="password" name="upwd" value="" class="login_input" />
      <input type="submit" class="login_sub" value="��¼" />
      <a href="/Topic/register2">�����û�ע��</a>
    </form>
  </c:if>
  <c:if test="${uname ne null}">
    <form id="login" method="#" action="javascript:void(0)">
      <label>�û���</label><label>${uname}&#160;&#160;��ӭ��½</label>&#160;&#160;<a href="/News/tdlu"> �ǳ� </a>
    </form>
  </c:if>
  <div id="channel"><a href="/News/newselect" class="login_link">������ҳ</a>  </div>
</div>
<div id="main">
  <div id="opt_list">
    <ul>
      <li><a href="/Topic/news_add">�������</a></li>
      <li><a href="/Topic/admin">�༭����</a></li>
      <li><a href="/Topic/cahzaoxw">��������</a></li>
      <li><a href="/Topic/topic_add">�������</a></li>
      <li><a href="/Topic/topicList">�༭����</a></li>
    </ul>
  </div>
  <div id="opt_area">
    <h1 id="opt_type"> ������ţ� </h1>
    <form action="javascript:void (0);" method="post">
      <p>
        <label> ���� </label>
        <select name="ntid">
          <option value="0">ѡ��</option>
          <c:forEach items="${topics}" var="topi">
            <option value="${topi.tid}">${topi.tname}</option>
          </c:forEach>
        </select>
      </p>
      <p>
        <label> ���� </label>
        <input name="ntitle" type="text" class="opt_input" />
      </p>
      <p>
        <label> ���� </label>
        <input name="nauthor" type="text" class="opt_input" />
      </p>
      <p>
        <label> ժҪ </label>
        <textarea name="nsummary" cols="40" rows="3"></textarea>
      </p>
      <p>
        <label> ���� </label>
        <textarea name="ncontent" cols="70" rows="10"></textarea>
      </p>
      <p>
        <label> �ϴ�ͼƬ </label>
        <input name="file" type="file" class="opt_input" />
      </p>
      <input name="action" type="hidden" value="addnews">
      <input name="day" type="hidden" value="2022-04-15 16:19:12">
      <input name="submit" type="submit" value="�ύ" class="opt_sub" />
      <input type="reset" value="����" class="opt_sub" />
    </form>
  </div>
</div>
<div id="site_link"> <a href="#">��������</a><span>|</span> <a href="#">Aboue Us</a><span>|</span> <a href="#">��ϵ����</a><span>|</span> <a href="#">������</a><span>|</span> <a href="#">�������</a><span>|</span> <a href="#">��������</a><span>|</span> <a href="#">��Ƹ��Ϣ</a><span>|</span> <a href="#">��վ��ͼ</a><span>|</span> <a href="#">���Է���</a> </div>
<div id="footer">
  <p class="">24Сʱ�ͻ��������ߣ�010-68988888  &#160;&#160;&#160;&#160; <a href="#">����������</a> &#160;&#160;&#160;&#160;  �������ߣ�010-627488888<br />
    �����������������ٱ��绰��010-627488888  &#160;&#160;&#160;&#160;  �ٱ����䣺<a href="#">jubao@jb-aptech.com.cn</a></p>
  <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
    �����й�   ��Ȩ����</p>
</div>
</body>
</html>
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
    alert("111111111111��");
    let day=$("[name='day']").val();

    let ntid=$("[name='ntid']").val();
    console.log(ntid)
    let ntitle=$("[name='ntitle']").val();
    console.log(ntitle)
    let nauthor=$("[name='nauthor']").val();
    console.log(nauthor)
    let ncreateDate=day;
    console.log(ncreateDate)
    let npicPath=$("[name='file']").val();
    console.log(npicPath)
    let ncontent=$("[name='ncontent']").val();
    console.log(ncontent)
    let nmodifyDate=day;
    console.log(nmodifyDate)
    let nsummary=$("[name='nsummary']").val();
    console.log(nsummary)
    $.ajax({
      "url":"/Topic/news_adds",//�ύ����
      "type":"post",//�ύ����
      "data":{
        "ntid":ntid,
        "ntitle":ntitle,
        "nauthor":nauthor,
        "nsummary":nsummary,
        "ncontent":ncontent,
        "npicPath":npicPath,
        "ncreateDate":ncreateDate,
        "nmodifyDate":nmodifyDate
      },//�ύֵ
      "dataType":"text",//��������
      "success":function(data){
        if (data=="a"){
          alert("�ύ�ɹ���");
          $("[name='ntid']").val(0);
          $("[name='ntitle']").val("");
          $("[name='nauthor']").val("");
          $("[name='file']").val("");
          $("[name='ncontent']").val("");
          $("[name='nsummary']").val("");
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
  /*��ȡ��ǰʱ��*/
  setInterval(function(){
    let today=new Date();
    let sjrq=today.toLocaleString();
    $("[name='day']").val(sjrq);
  },1000);
})
</script>