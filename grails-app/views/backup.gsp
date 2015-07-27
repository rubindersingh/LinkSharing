<%--
  Created by IntelliJ IDEA.
  User: rubinder
  Date: 27/7/15
  Time: 10:38 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<form action="http://bootsnipp.com/search" method="GET" role="search">
    <div class="input-group">
        <input type="text" class="form-control" name="q" placeholder="Search for snippets">
        <span class="input-group-btn">
            <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-search"></span></button>
            <button class="btn btn-danger" type="reset"><span class="glyphicon glyphicon-remove"></span></button>
        </span>
    </div>
</form>

<div class="row">
    <div class="col-lg-6">
        <div class="input-group">
            <div class="input-group-btn">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action <span class="caret"></span></button>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                </ul>
            </div><!-- /btn-group -->
            <input type="text" class="form-control"> <span class="input-group-addon glyphicon glyphicon-search"></span>
        </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
</body>
</html>