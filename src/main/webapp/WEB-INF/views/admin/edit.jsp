<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../fragments/header.jsp"/>
<div class="container-fluid base-light  content">
    <jsp:include page="../fragments/sidebar.jsp"/>
    <div class="col-md-10"  ng-controller="EditCtrl">
        <div class="panel-primary   ">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <a href="/product/${product.id}" class="btn btn-success btn-xs"><i class="fa fa-arrow-left"></i></a>
                    Product</h3>
            </div>
            <div class="white panel-body">
                <div class="col-md-12 panelTop">
                    <div class="col-md-2">
                        <img ng-src="{{imageSrc}}" src="${product.images[0].url}" class="img-responsive">
                    </div>
                    <div class="col-md-8">
                        <div class="col-xs-6 row">
                            <spring:url value="/product/${id}/edit" var="formUrl"/>
                            <form:form modelAttribute="product" action="${formUrl }" method="post"
                                       enctype="multipart/form-data">
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
                                    <select id="sel1" class="form-control" name="categoryId">
                                        <option selected> ${product.category.title}</option>
                                        <option selected value="${product.category.id}">${product.category.title}</option>
                                        <c:forEach items="${categories}" var="category">
                                            <option value="${category.id}">${category.title}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <label class="btn btn-default btn-file">
                                    Image <input type="file" multiple accept='image/*' ng-file-select="onFileSelect($files)" name="file" style="display: block;">
                                </label>
                                <br><br>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-lg btn-add-to-cart"><span
                                            class="fa fa-check"></span> Submit
                                    </button>
                                    <a href="/product/${product.id}" class="btn btn-danger btn-lg"><span
                                            class="fa fa-times"></span> Cancel
                                    </a>
                                    <a href="/product/${product.id}/delete" class="btn btn-danger btn-lg">
                                        <span class="fa fa-trash-o"></span> Delete
                                    </a>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<br>
<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/upload.js"></script>
<script src="/resources/js/edit-product.js"></script>
</body>

</html>

