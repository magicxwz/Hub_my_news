<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>�����й�</title>
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body >
<div style="margin:0 auto;width:1000px">
<div id="header">
	<div id="top_login">
        <form id="login" method="post" action="login.jsp">
        	<label>��¼��</label><input type="text" name="username" value="" class="login_input" />
            <label>��&#160;&#160;��</label><input type="password" name="upwd" value="" class="login_input" />
            <input type="submit" class="login_sub" value="��¼" />
        </form>
        <img src="${pageContext.request.contextPath}/images/friend_logo.gif" alt="Google" id="friend_logo" />
    </div>
    <div id="nav">
    	<div id="logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="�����й�" /></div>
        <div id="mainnav">
        	<ul>			
                <li class="headLi"><a href="#"><b>����</b></a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">���</a></li>
                <li class="leftLineTop"><a href="#"><b>����</b></a></li>
                <li><a href="#">NBA</a></li>
                <li><a href="#">��Ʊ</a></li>
                <li class="leftLineTop"><a href="#"><b>����</b></a></li>
                <li><a href="#">�ݸ�</a></li>
                <li><a href="#">����</a></li>
                <li class="leftLineTop"><a href="#"><b>����</b></a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">����</a></li>
                <li class="leftLineTop"><a href="#"><b>�ռ�</b></a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">UC</a></li>
                <li class="leftLineTop"><a href="#"><b>����</b></a></li>
                <li><a href="#">�㶫</a></li>
                <li><a href="#">�Ϻ�</a></li>
                <li class="leftLine broad"><a href="#">�߶���</a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">����</a></li>
            </ul>
            <ul>			
                <li class="headLi"><a href="#"><b>�ƾ�</b></a></li>
                <li><a href="#">��Ʊ</a></li>
                <li><a href="#">����</a></li>
                <li class="leftLine"><a href="#"><b>����</b></a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">����</a></li>
                <li class="leftLine"><a href="#" class="linkRed01"><b>��Ƶ</b></a></li>
                <li><a href="#" class="linkRed01">����</a></li>
                <li><a href="#" class="linkRed01">��Ƭ</a></li>
                <li class="leftLine"><a href="#"><b>Ů��</b></a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">����</a></li>
                <li class="leftLine"><a href="#"><b>��̳</b></a></li>
                <li><a href="#">Ȧ��</a></li>
                <li><a href="#">���</a></li>
                <li class="leftLine"><a href="#"><b>����</b></a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">�̳�</a></li>
                <li class="leftLine broad"><a href="#">�֡���</a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">����</a></li>
            </ul>		
            <ul>			
                <li class="headLi"><a href="#"><b>�Ƽ�</b></a></li>
                <li><a href="#">�ֻ�</a></li>
                <li><a href="#">����</a></li>
                <li class="leftLineBot"><a href="#"><b>����</b></a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">�ѳ�</a></li>
                <li class="leftLineBot"><a href="#"><b>����</b></a></li>
                <li><a href="#">�ز�</a></li>
                <li><a href="#">�Ҿ�</a></li>
                <li class="leftLineBot"><a href="#"><b>�ֿ�</b></a></li>
                <li><a href="#">��Ʒ</a></li>
                <li><a href="#">����</a></li>
                <li class="leftLineBot"><a href="#"><b>����</b></a></li>
                <li><a href="#">��Ϸ</a></li>
                <li><a href="#">UT</a></li>
                <li class="leftLineBot"><a href="#"><b>����</b></a></li>
                <li style="padding-top:3px;line-height:15px;"><a href="#">����</a></li>
                <li><a href="#">����</a></li>
                <li class="leftLineBot broad"><a href="#">���û�</a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">����</a></li>
            </ul>
        </div>
        <!--mainnav end-->
    </div>
</div>

<div id="container">
	<div class="sidebar">
    	<h1><img src="${pageContext.request.contextPath}/images/title_1.gif" alt="��������" /></h1>
        <div class="side_list">
        	<ul>
        	  <li> <a href='#'><b> ������ڸ�����ǿ��ͥ�����Դ��໥ì�� </b></a> </li>
              <li> <a href='#'><b> ����ί��4����Ͷ�ʼƻ����ἷռ���Ͷ�ʿռ� </b></a> </li>
              <li> <a href='#'><b> ����2��������������������ȫһ������ע </b></a> </li>
        	</ul>
        </div>
        
        <h1><img src="${pageContext.request.contextPath}/images/title_2.gif" alt="��������" /></h1>
        <div class="side_list">
        	<ul>
        	  <li> <a href='#'><b> �ձ������ɽ�״�ȫ������������⽻���� </b></a> </li>
              <li> <a href='#'><b> �������ɫ���ٴν������ڵ� </b></a> </li>
              <li> <a href='#'><b> ���ʽ���30��ǰ�ͺ�ȼ�Ϲ�Ӧ���������� </b></a> </li>
              <li> <a href='#'><b> ������й���֯���ƶ԰͸��������ը���� </b></a> </li>
        	</ul>
        </div>
        
        <h1><img src="${pageContext.request.contextPath}/images/title_3.gif" alt="��������" /></h1>
        <div class="side_list">
        	<ul>
        	  <li> <a href='#'><b> ʩ����������Ӱ��ҵ��Ǩ�ƻ� �ƽ����ݾ��ø��� </b></a> </li>
              <li> <a href='#'><b> ���׺������ݻ�Ӧ�������� �����ܳ�Խ�������� </b></a> </li>
              <li> <a href='#'><b> �������ߺš�������Ƭ���� ����ɭ�ȳ�ϯ </b></a> </li>
              <li> <a href='#'><b> ���Ĵ��������ػ����� �������Ϸ���Ľ� </b></a> </li>
        	</ul>
        </div>
    </div>
    <div class="main">
    	<div class="class_type"><img src="${pageContext.request.contextPath}/images/class_type.gif" alt="��������" /></div>
    	<div class="content">
        	<ul class="class_date">
            	<li id="class_month">
                	<a href='index1.jsp?ntid=1'><b>
����
</b></a>
<a href='index1.jsp?ntid=2'><b>
����
</b></a>
<a href='index1.jsp?ntid=3'><b>
����
</b></a>
<a href='index1.jsp?ntid=4'><b>
����
</b></a>
<a href='index1.jsp?ntid=5'><b>
����
</b></a>
<a href='index1.jsp?ntid=6'><b>
���
</b></a>
<a href='index1.jsp?ntid=7'><b>
�ƾ�
</b></a>
<a href='index1.jsp?ntid=8'><b>
�Ƽ�
</b></a>
<a href='index1.jsp?ntid=9'><b>
����
</b></a>
<a href='index1.jsp?ntid=10'><b>
����
</b></a>
<a href='index1.jsp?ntid=11'><b>
����
</b></a>
</li><li id="class_month">
<a href='index1.jsp?ntid=12'><b>
����
</b></a>
<a href='index1.jsp?ntid=13'><b>
�Ҿ�
</b></a>
<a href='index1.jsp?ntid=14'><b>
����
</b></a>
<a href='index1.jsp?ntid=15'><b>
�Ļ�
</b></a>
<a href='index1.jsp?ntid=16'><b>
����
</b></a>
</li>
            
            </ul>
            <ul class="classlist">
                <c:forEach items="${news}" var="new" begin="0" end="4">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
                <c:forEach items="${news}" var="new" begin="5" end="9">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
                <c:forEach items="${news}" var="new" begin="0" end="5">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
                <c:forEach items="${news}" var="new" begin="0" end="5">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
                <c:forEach items="${news}" var="new" begin="0" end="5">
                    <li><a href="#">${new.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${new.ncreateDate}" />)</span></li>
                </c:forEach>
                <li class="space"></li>
            </ul>
    	</div>
        <div class="picnews">
        	<ul>
            	<li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture1.jpg" width="249" alt="" /></a><a href="#">������ķ���</a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture2.jpg" width="249" alt="" /></a><a href="#">������ķ���</a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture3.jpg" width="249" alt="" /></a><a href="#">������ķ���</a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture4.jpg" width="249" alt="" /></a><a href="#">������ķ���</a></li>
            </ul>
        </div>
    </div>
</div>

<div id="friend">
	<h1 class="friend_t"><img src="${pageContext.request.contextPath}/images/friend_ico.gif" alt="�������" /></h1>
    <div class="friend_list">
    	<ul>
        	<li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
            <li><a href="#">�й�������</a></li>
        </ul>
    </div>
</div>

<div id="footer">
	<p class="">24Сʱ�ͻ��������ߣ�010-68988888  &#160;&#160;&#160;&#160;  <a href="#">����������</a>  &#160;&#160;&#160;&#160;  �������ߣ�010-627488888<br />
	�����������������ٱ��绰��010-627488888  &#160;&#160;&#160;&#160;  �ٱ����䣺<a href="#">jubao@jb-aptech.com.cn</a></p>
    <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
	�����й�   ��Ȩ����</p>	
</div>

</div>
</body>
</html>