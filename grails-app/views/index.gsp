<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Link Sharing</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}

            .mybutton {
            background-color: #ffffff;
            }
		</style>
        <script>

            var searchApp = angular.module("searchApp",[]);

            searchApp.controller("searchController",function($scope,$http){

                $scope.selectedState="";
                $scope.states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Dakota', 'North Carolina', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'];


            });



    </script>
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
                        <div class="form-group">
                            <div class="col-md-6">
                                <label class="control-label" for="firstName">First Name*</label>
                            </div>
                            <div class="col-md-6">
                                <g:textField id="firstName" class="form-control" name="firstName" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label class="control-label" for="lastName">Last Name*</label>
                            </div>
                            <div class="col-md-6">
                                <g:textField id="lastName" class="form-control" name="lastName" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label class="control-label" for="email">Email*</label>
                            </div>
                            <div class="col-md-6">
                                <g:textField id="email" class="form-control" name="email" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label class="control-label" for="username">Username*</label>
                            </div>
                            <div class="col-md-6">
                                <g:textField id="username" class="form-control" name="username" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label class="control-label" for="password2">Password*</label>
                            </div>
                            <div class="col-md-6">
                                <g:passwordField id="password2" class="form-control" name="password" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6" style="text-align: left;">
                                <label class="control-label" for="confirmPassword">Confirm Password*</label>
                            </div>
                            <div class="col-md-6">
                                <g:passwordField id="confirmPassword" class="form-control" name="confirmPassword" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label class="control-label" for="photo">Photo</label>
                            </div>
                            <div class="col-md-6">
                                <input class="form-control" id="photo" type="file" name="photo">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-8 col-md-4" style="text-align: right;">
                                <g:submitButton name="Register" class="btn btn-default"/>
                            </div>
                        </div>
                    </g:form>
                    <g:message code="${flash.message}" args="${flash.args}"
                               default="${flash.default}"/>
                </div>
            </div>
        </div>
    </div>
    </div>


            <div class="input-group">
                <input type="text" class="form-control" name="q" placeholder="Search for snippets">
                <span class="input-group-btn">
                    <button class="btn .btn-primary" type="submit"><span class="glyphicon glyphicon-search"></span></button>
                    <button class="btn .btn-danger" type="reset"><span class="glyphicon glyphicon-remove"></span></button>
                </span>
            </div>


        </div>
	</body>
</html>
