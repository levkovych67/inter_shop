<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="select" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../fragments/header.jsp"/>
<div class="container-fluid base-light  content">
    <jsp:include page="../fragments/sidebar.jsp"/>
    <div class="col-md-10" ng-controller="ProductCtrl">
        <div class="panel-primary   ">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <a href="/" class="btn btn-success btn-xs"><i class="fa fa-arrow-left"></i></a>
                    Product</h3>
            </div>
            <div class="white panel-body">
                <div class="col-md-12 panelTop">

                    <div class="col-xs-6 row">
                        <spring:url value="/product/create" var="formUrl"/>
                        <form:form modelAttribute="product" action="${formUrl }" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label>Title</label>
                                <form:input id="title"
                                            cssClass="form-control" path="title"/>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <form:textarea id="description" rows="10"
                                               cssClass="form-control" path="description"/>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <form:input id="price"
                                            cssClass="form-control" path="price"/>
                            </div>
                            <div class="form-group">
                                <label for="sel1">Select category</label>
                                <form:select id="sel1" cssClass="form-control" path="categoryId">
                                    <form:options items="${categories}" itemValue="id" itemLabel="title"/>
                                </form:select>
                            </div>
                            <label class="btn btn-default btn-file">
                                Browse <input type="file" name="image" style="display: block;">
                            </label>
                            <button type="submit" class="btn btn-lg btn-add-to-cart text-center"><span
                                    class="fa fa-check"></span> Submit
                            </button>
                            <a href="/" class="btn btn-danger btn-lg  text-center"><span
                                    class="fa fa-times"></span> Cancel
                            </a>

                        </form:form>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
<br>
<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/product-ctrl.js"></script>
</body>

</html>