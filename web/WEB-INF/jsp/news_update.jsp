<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>�������--�����̨</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css" />
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
    </form>
    <a href="/Topic/register2">�����û�ע��</a>
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
      <li><a href="news_add.jsp">�������</a></li>
      <li><a href="admin.jsp">�༭����</a></li>
      <li><a href="#">��������</a></li>
      <li><a href="topic_add.jsp">�������</a></li>
      <li><a href="#">�༭����</a></li>
    </ul>
  </div>
  <div id="opt_area">
    <h1 id="opt_type"> ������ţ� </h1>
    <form action="#" method="post">
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
      <input type="submit" value="�ύ" class="opt_sub" />
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
