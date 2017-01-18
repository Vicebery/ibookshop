<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>学海书城后台管理中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath }/css/general.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" />

<style type="text/css">
body {
  color: white;
}
#loginBack h1{
	position:relative;
	left:545px;
	top:100px;
	padding-bottom:5px;
}

#logintable{
	background-image:url(${pageContext.request.contextPath }/images/2.jpg);
	image-repeat:no-repeat;
	color:black;
}

table tr td table tr {
	height:40px;
	line-height:40px;
}

table tr td table tr td {
	height:40px;
	line-height:40px;
	font-size:20px;
}
</style>
</head>
<body style="background: #278296">
<center><s:actionerror /></center>
<form method="post" action="${pageContext.request.contextPath }/adminUser_login.action" target="_parent" name='theForm' onsubmit="return validate()">
   <div id=loginBack>
  <h1>学海书城管理系统</h1>
  <table id="logintable" cellspacing="0" cellpadding="0" style="margin-top: 100px" align="center">
  <tr>
    <td style="padding-left: 100px;padding-right:100px;padding-top:40px;padding-bottom:130px;">
      <table>
      <tr>
        <td>管理员姓名：</td>
        <td><input type="text" name="username" /></td>
      </tr>
      <tr>
        <td>管理员密码：</td>
        <td><input type="password" name="password" /></td>
      </tr>
      <tr><td>&nbsp;</td><td><input type="submit" value="进入" class="button" /></td></tr>
      </table>
    </td>
  </tr>
  </table>
  </div>
  <input type="hidden" name="act" value="signin" />
</form>
<script language="JavaScript">
<!--
  document.forms['theForm'].elements['username'].focus();
  
  /**
   * 检查表单输入的内容
   */
  function validate()
  {
    var validator = new Validator('theForm');
    validator.required('username', user_name_empty);
    //validator.required('password', password_empty);
    if (document.forms['theForm'].elements['captcha'])
    {
      validator.required('captcha', captcha_empty);
    }
    return validator.passed();
  }
  
//-->
</script>
</body>