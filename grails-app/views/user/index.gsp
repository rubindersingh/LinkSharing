<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Link Sharing</title>
</head>
<body>
<div class="container-fluid">
    <div class="row" style="margin-top:10px;">
        <div class="col-md-7">
            <p>Topics side</p>
        </div>
        <div class="col-md-5">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">Login</div>
                    <div class="panel-body">
                        <g:form name="loginForm" role="form" class ="form-horizontal" url="[controller:'user',action:'login']">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="control-label" for="emailUsername">Email/Username*</label>
                                </div>
                                <div class="col-md-8">
                                    <g:textField id="emailUsername" class="form-control" name="emailUsername" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="control-label" for="password">Password*</label>
                                </div>
                                <div class="col-md-8">
                                    <g:passwordField id="password" class="form-control" name="password" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-3 col-md-5" style="text-align: right">
                                    <a href="#">Forgot Password</a>
                                </div>
                                <div class="col-md-4" style="text-align: right;">
                                    <g:submitButton name="Login" class="btn btn-default"/>
                                </div>
                            </div>
                        </g:form>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">Register</div>
                    <div class="panel-body">
                        <g:form name="registerForm" role="form" class ="form-horizontal" url="[controller:'user',action:'register']" enctype="multipart/form-data">
                            <div class="form-group ${hasErrors(bean: registerCO, field: 'firstName', 'error')} required">
                                <div class="col-md-6">
                                    <label class="control-label" for="firstName">First Name*</label>
                                </div>
                                <div class="col-md-6">
                                    <g:textField id="firstName" class="form-control" name="firstName" value="${registerCO?.firstName}"/>
                                </div>
                            </div>
                            <div class="form-group ${hasErrors(bean: registerCO, field: 'lastName', 'error')} required">
                                <div class="col-md-6">
                                    <label class="control-label" for="lastName">Last Name*</label>
                                </div>
                                <div class="col-md-6">
                                    <g:textField id="lastName" class="form-control" name="lastName" value="${registerCO?.lastName}"/>
                                </div>
                            </div>
                            <div class="form-group ${hasErrors(bean: registerCO, field: 'email', 'error')} required">
                                <div class="col-md-6">
                                    <label class="control-label" for="email">Email*</label>
                                </div>
                                <div class="col-md-6">
                                    <g:textField id="email" class="form-control" name="email" value="${registerCO?.email}"/>
                                </div>
                            </div>
                            <div class="form-group ${hasErrors(bean: registerCO, field: 'username', 'error')} required">
                                <div class="col-md-6">
                                    <label class="control-label" for="username">Username*</label>
                                </div>
                                <div class="col-md-6">
                                    <g:textField id="username" class="form-control" name="username" value="${registerCO?.username}"/>
                                </div>
                            </div>
                            <div class="form-group ${hasErrors(bean: registerCO, field: 'password', 'error')} required">
                                <div class="col-md-6">
                                    <label class="control-label" for="password2">Password*</label>
                                </div>
                                <div class="col-md-6">
                                    <g:passwordField id="password2" class="form-control" name="password" value="${registerCO?.password}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6" style="text-align: left;">
                                    <label class="control-label" for="confirmPassword">Confirm Password*</label>
                                </div>
                                <div class="col-md-6">
                                    <g:passwordField id="confirmPassword" class="form-control" name="confirmPassword" value="${registerCO?.confirmPassword}"/>
                                </div>
                            </div>
                            <div class="form-group ${hasErrors(bean: registerCO, field: 'photo', 'error')} required">
                                <div class="col-md-6">
                                    <label class="control-label" for="photo">Photo</label>
                                </div>
                                <div class="col-md-6">
                                    <input class="form-control" id="photo" type="file" name="photo" value="${registerCO?.photo}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-8 col-md-4" style="text-align: right;">
                                    <g:submitButton name="Register" class="btn btn-default"/>
                                </div>
                            </div>
                        </g:form>
                        <g:message code="${failMessage}"/>
                        <g:message code="${successMessage}"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
