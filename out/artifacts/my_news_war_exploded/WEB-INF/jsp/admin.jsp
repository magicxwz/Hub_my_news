<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>�����̨</title>
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
    <div id="status">
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
                <label>�û���</label><label>${uname}&#160;&#160;��ӭ��½</label>&#160;&#160;<a href="/News/newselect"> ������ҳ </a>&#160;&#160;<a href="/News/tdlu"> �ǳ� </a>
            </form>
        </c:if>
    </div>
    <div id="channel"></div>
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
        <ul class="classlist">
            <c:forEach items="${sessionScope.json.news}" var="newss">
                <li>${newss.ntitle}<span>���ߣ�${newss.nauthor}&#160;&#160;&#160;&#160;<a href='/Topic/news_update/${newss.nid}'>�޸�</a>&#160;&#160;&#160;&#160;<a href='javascript:sc(${newss.nid})'>ɾ��</a></span></li>
            </c:forEach>
        </ul>
        <h2><span>����������${sessionScope.json.page.count}</span>��ǰ<span class="aa">${sessionScope.json.page.pagey }</span> / ${sessionScope.json.page.totalCount }
        <a href="javascript:fy(1)">��    ҳ</a>
        <a class="nextPages" href="javascript:fy(${sessionScope.json.page.pagey-1 })">��һҳ</a>
        <a class="nextPagex" href="javascript:fy(${sessionScope.json.page.pagey+1 });">��һҳ</a>
        <a class="lastPage" href="javascript:fy(${sessionScope.json.page.totalCount });">ҳ    β</a>
        <%--<a href="Servlet?zz=test&page=1">��</a>--%></h2>
    </div>
</div>

<div id="site_link">
	<a href="#">��������</a><span>|</span>
    <a href="#">Aboue Us</a><span>|</span>
    <a href="#">��ϵ����</a><span>|</span>
    <a href="#">������</a><span>|</span>
    <a href="#">�������</a><span>|</span>
    <a href="#">��������</a><span>|</span>
    <a href="#">��Ƹ��Ϣ</a><span>|</span>
    <a href="#">��վ��ͼ</a><span>|</span>
    <a href="#">���Է���</a>
</div>
<div id="footer">
	<p class="">24Сʱ�ͻ��������ߣ�010-68988888  &#160;&#160;&#160;&#160;  <a href="#">����������</a>  &#160;&#160;&#160;&#160;  �������ߣ�010-627488888<br />
	�����������������ٱ��绰��010-627488888  &#160;&#160;&#160;&#160;  �ٱ����䣺<a href="#">jubao@jb-aptech.com.cn</a></p>
    <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
	�����й�   ��Ȩ����</p>	
</div>
</body>
</html>
<script type="text/javascript">
    function fy(y){
        $.ajax({
            "url":"/Topic/fycx/"+y,//�ύ����
            "type":"get",//�ύ����
            "data":{},//�ύֵ
            "dataType":"json",//��������
            "success":function(data){
                console.log(data);
                $(".classlist li").remove();
                $.each(data.news,function (index,item){
                    let ntitle=item.ntitle;
                    let nauthor=item.nauthor;
                    let nid=item.nid;
                    let lis=$("<li>"+ntitle+"<span>���ߣ�"+nauthor+"&#160;&#160;&#160;&#160;<a href='/Topic/news_update/"+nid+"'>�޸�</a>&#160;&#160;&#160;&#160;<a href='javascript:sc("+nid+")'>ɾ��</a></span></li>");
                    $(".classlist").append(lis);
                });
                //�޸ķ�ҳ����
                $(".nextPages").attr("href","javascript:fy("+(data.page.pagey-1)+")");//��һҳ
                $(".nextPagex").attr("href","javascript:fy("+(data.page.pagey+1)+")");//��һҳ
                $(".aa").text(data.page.pagey);
            },
            "error":function(){//�ɹ��������
                console.log("��ѯʧ��");
            }
        })
    }
    //ɾ��
    function sc(id){
        let xbiao=$(this).index();
        console.log(xbiao);
        var flag=confirm("�Ƿ�ɾ����")
        if (flag){
            $.ajax({
                "url":"/Topic/scxw/"+id,//�ύ����
                "type":"post",//�ύ����
                "data":{},//�ύֵ
                "dataType":"text",//��������
                "success":function(data){//�������͵�����ֵ
                    console.log(data);
                    console.log(typeof (data));
                    if(data){
                        $(".classlist li:eq("+xbiao+")").remove();
                        console.log("ɾ���ɹ�");
                    }else{
                        alert("ɾ��ʧ��2")
                    }
                },
                "error":function(){//�ɹ��������
                    alert("ɾ��ʧ��")
                }
            })
        }
    };
</script>