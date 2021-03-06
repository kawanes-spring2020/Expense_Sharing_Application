
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@include file="header.jsp" %>


		<div class="mainWrapper">
			<div class="wrap-login100">
				
				<div class="login-card">
				<div class="login100-pic js-tilt" data-tilt>
                                    <img class="img" src="<c:url value="/static/images/splitwiselogin.jpg"/>" alt="IMG">
				</div>
				</div>
				<div class="login-card">
					<div class="login-form">
						<c:url var="loginUrl" value="/login" />
						<form action="${loginUrl}" method="post" class="form-horizontal">
						
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
								<input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
							</div>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
								<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
							</div>
							<div class="input-group input-sm">
                              
                            </div>
							<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
								
							<div class="form-actions">
								<input type="submit"
									class="btn btn-block btn-primary btn-default" value="Log in">
									<hr>
									<a style="padding-left:110px;" class="txt2" href="<c:url value="/register" />">
									New User?
								</a>
							</div>
							
							
								
							
							
						
						</form>
						</div>
						</div>
			</div>
		</div>
	
	
<%@include file="footer.jsp" %>