<%@ include file="/common/taglibs.jsp" %>

<head>
    <title><fmt:message key="login.title"/></title>
    <meta name="menu" content="Login"/>
</head>
<body id="login">
	<div id="body_70">
		<button id="online-matrimony" type="button" class="btn btn-lg btn-warning" data-toggle="popover" title="Online Matrimony" data-content="And here's some amazing content. It's very engaging. Right?">Online Matrimony</button>
		<button id="assisted-matrimony" type="button" class="btn btn-lg btn-success" data-toggle="popover" title="Assisted Matrimony" data-content="And here's some amazing content. It's very engaging. Right?">Assisted Matrimony</button>
	</div>
	<div id="login_30">
		<form method="post" id="loginForm" action="<c:url value='/j_security_check'/>"
		    onsubmit="saveUsername(this);return validateForm(this)" class="form-signin" autocomplete="off">
		    <h2 class="form-signin-heading">
		        <fmt:message key="login.heading"/>
		    </h2>
		<c:if test="${param.error != null}">
		    <div class="alert alert-danger alert-dismissable">
		        <fmt:message key="errors.password.mismatch"/>
		    </div>
		</c:if>
		    <input type="text" name="j_username" id="j_username" class="form-control"
		           placeholder="<fmt:message key="label.username"/>" required tabindex="1">
		    <input type="password" class="form-control" name="j_password" id="j_password" tabindex="2"
		           placeholder="<fmt:message key="label.password"/>" required>
		
		<c:if test="${appConfig['rememberMeEnabled']}">
		    <label for="rememberMe" class="checkbox">
		        <input type="checkbox" name="_spring_security_remember_me" id="rememberMe" tabindex="3"/>
		        <fmt:message key="login.rememberMe"/></label>
		</c:if>
		
		    <button type="submit" class="btn btn-lg btn-primary btn-block" name="login" tabindex="4">
		        <fmt:message key='button.login'/>
		    </button>
		</form>
		
		<p>
		    <fmt:message key="login.signup">
		        <fmt:param><c:url value="/signup"/></fmt:param>
		    </fmt:message>
		</p>
		
		<c:set var="scripts" scope="request">
		<%@ include file="/scripts/login.js"%>
		</c:set>
		
		<p><fmt:message key="login.passwordHint"/></p>
		
		<p><fmt:message key="updatePassword.requestRecoveryTokenLink"/></p>
	</div>
	<script>
		$('#online-matrimony').popover({
		  placement: 'bottom'
		});
		$('#assisted-matrimony').popover({
		  placement: 'bottom'
		});
	</script>
</body>