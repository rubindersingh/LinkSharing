<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Welcome to Link Sharing"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'link-sharing.png')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'link-sharing.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'link-sharing.png')}">
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:javascript src="npm.js"/>
		<asset:javascript src="application.js"/>
        <asset:javascript src="jquery-1.10.2.js"/>
        <asset:javascript src="bootstrap3-typeahead.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="linkSharingLogo" class="top" role="banner">
            <a href="http://localhost:8080/linksharing/"><asset:image src="link-sharing.png" alt="Link Sharing"/><span id="headerLinkSpan">Link Sharing</span></a>
            <div id="userSection" class="pull-right list-inline">
                <a href="#"><span class="glyphicon glyphicon-comment"/></a>
                <a href="#"><span class="glyphicon glyphicon-envelope"/></a>
                <a href="#"><span class="glyphicon glyphicon-paperclip"/></a>
                <a href="#"><span class="glyphicon glyphicon-user"/></a>

                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">Rubinder<b class="caret"></b></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="#">Profile</a></li>
                            <li><a href="#">Users</a></li>
                            <li><a href="#">Topics</a></li>
                            <li><a href="#">Posts</a></li>
                            <li><a href="#">Logout</a></li>
                        </ul>
                    </li>
                
            </div>

        </div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    </body>
</html>
