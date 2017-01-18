<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>ibook网上书城</title>
<link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>

</head>
<body>

<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="${ pageContext.request.contextPath }/index.action">
				<img src="${pageContext.request.contextPath}/image/logo.jpg" alt="ibook"/>
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
	<img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="学海无涯" title="学海无涯"/>
</div>	
</div>
	
	<%@ include file="menu.jsp" %>

</div>	

<div class="container index">
		

		<div class="span24">
			<div id="hotProduct" class="hotProduct clearfix">
					<div class="title">
						<strong>热销书籍</strong>
					</div>
					<ul class="tab">
							<li class="current">
								<a  target="_blank"></a>
							</li>
							<li>
								<a  target="_blank"></a>
							</li>
							<li>
								<a target="_blank"></a>
							</li>
					</ul>
					<ul class="tabContent" style="display: block;">
						<s:iterator var="p" value="hList">
							<li>
								<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank"><img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
							</li>
						</s:iterator>		
					</ul>
			</div>
		</div>
		<div class="span24">
			<div id="newProduct" class="newProduct clearfix">
					<div class="title">
						<strong>最新书籍</strong>
					</div>
					<ul class="tab">
							<li class="current">
								<a  target="_blank"></a>
							</li>
							<li>
								<a  target="_blank"></a>
							</li>
							<li>
								<a target="_blank"></a>
							</li>
					</ul>					
						 <ul class="tabContent" style="display: block;">
						 	<s:iterator var="p" value="nList">
									<li>
										<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank"><img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"  style="display: block;"></a>								
									</li>
							</s:iterator>		
						</ul>	
			</div>
		</div>
		<div class="span24">
			<div class="friendLink">
				<dl>
					<dt>学海无涯</dt>
							<dd>
								<a  target="_blank">支付方式</a>
								|
							</dd>
							<dd>
								<a  target="_blank">配送方式</a>
								|
							</dd>
							<dd>
								<a  target="_blank">售后服务</a>
								|
							</dd>
							<dd>
								<a  target="_blank">购书帮助</a>
								|
							</dd>
							<dd>
								<a  target="_blank">钻石卡</a>
								|
							</dd>
							<dd>
								<a  target="_blank">半折卡</a>
								|
							</dd>
							<dd>
								<a target="_blank">银联卡</a>
								|
							</dd>
							<dd>
								<a  target="_blank">信用卡</a>
								|
							</dd>
							
					<dd class="more">
						<a >更多</a>
					</dd>
				</dl>
			</div>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="${pageContext.request.contextPath}/image/footer.jpg" width="950" height="52" alt="智慧的力量" title="智慧的力量">
</div>	</div>
	<div class="span24">
		<ul class="bottomNav">
					<li>
						<a href="http://www.vicebery.cc/">关于我们</a>
						|
					</li>
					<li>
						<a href="mailto:Vicebery@163.com" class="to-animate">联系我们</a>
						|
					</li>
					<li>
						<a>招贤纳士</a>
						|
					</li>
					<li>
						<a>法律声明</a>
						|
					</li>
					<li>
						<a>友情链接</a>
						|
					</li>
					<li>
						<a target="_blank">支付方式</a>
						|
					</li>
					<li>
						<a target="_blank">配送方式</a>
						|
					</li>
					<li>
						<a>服务声明</a>
						|
					</li>
					<li>
						<a>广告声明</a>
						
					</li>
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2016学海书城 版权所有</div>
	</div>
</div>
</body>
</html>