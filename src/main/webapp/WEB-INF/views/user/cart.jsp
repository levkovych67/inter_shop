<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../fragments/header.jsp"/>
<div class="container ">
    <br>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Admin Panel</h3>
        </div>
        <div class="panel-body ">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Product name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th class="text-center">Action</th>
                </tr>
                </thead>
                <tr>
                    <td>Iphone 1499</td>
                    <td>14.88$</td>
                    <td>3</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-danger btn-xs">Remove</a>
                    </td>
                </tr>
                <tr>
                    <td>Iphone 1499</td>
                    <td>14.88$</td>
                    <td>3</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-danger btn-xs">Remove</a>
                    </td>
                </tr>
                <tr>
                    <td>Iphone 1499</td>
                    <td>14.88$</td>
                    <td>3</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-danger btn-xs">Remove</a>
                    </td>
                </tr>
                <tr>
                    <td>Iphone 1499</td>
                    <td>14.88$</td>
                    <td>3</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-danger btn-xs">Remove</a>
                    </td>
                </tr>

            </table>
            <button class="btn btn-success pull-right">Confirm Order</button>
        </div>

    </div>

</div>

<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>


</body>

</html>