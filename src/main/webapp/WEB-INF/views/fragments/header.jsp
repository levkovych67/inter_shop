<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="data-spm" content="2114">
    <meta http-equiv="content-language" content="ru">
    <title>Home</title>
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/icon.png">
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&subset=latin,cyrillic-ext'
          rel='stylesheet' type='text/css'>
</head>
<body ng-app="myApp.controllers">
<div class="wrapper">
    <div class="header">
        <div class="container-fluid base">
            <nav class=" navbar-static-top base">
                <div class="navbar-header">
                    <a class="navbar-brand navbar-link header-name" href="/">Internet<span class="">Shop</span></a>
                </div>
                <form class="navbar-form default-font-nav-tab navbar-left" method="POST" action="/product/search">
                    <div class="  nav">
                        <ul>
                            <div class="input-group">
                                <li style="width: 300px ">
                                    <input id="name" name="title" type="text" style="width: 300px "
                                           class="form-control default-font-nav-tab"
                                           placeholder="Search"
                                    ></li>
                            </div>
                            <li class="about"><a onclick="$(this).closest('form').submit()"><i
                                    class="fa fa-search "></i></a></li>
                        </ul>
                    </div>
                </form>
                <form class="navbar-form navbar-right">
                    <div class="  nav">
                        <ul>
                            <sec:authorize access="isAuthenticated()">
                                <sec:authorize access="hasRole('USER')">
                                    <li class=""><a href="/user/settings"><i class="fa fa-user  "></i></a></li>
                                    <li class="about"><a href="/user/cart"><i class="fa fa-shopping-cart  "></i><span
                                            class=" default-font-nav-tab  badge">42</span></a></li>
                                    <li class="about"><a href="/logout"><i class="fa fa-sign-out  "></i></a></li>
                                </sec:authorize>
                            </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <sec:authorize access="hasRole('ADMIN')">
                                    <ul>
                                        <li><a type="button" class="default-font-nav-tab btn navbar-btn" href="/admin">Settings</a></li>
                                        <li><a type="button" class="default-font-nav-tab btn navbar-btn" href="/product/create">Create Lot</a></li>
                                        <li><a type="button" class="default-font-nav-tab btn navbar-btn" href="/logout">Logout </a></li>

                                    </ul>


                                </sec:authorize>
                            </sec:authorize>
                            <sec:authorize access="!isAuthenticated()">
                                <li class=""><a href="/login"><i class="fa fa-sign-in "></i></a></li>
                            </sec:authorize>
                        </ul>
                    </div>
                </form>
            </nav>
        </div>

    </div>