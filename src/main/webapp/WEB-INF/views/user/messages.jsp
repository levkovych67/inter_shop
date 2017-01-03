<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../fragments/header.jsp"/>
<div class="container">
    <br>
    <div class=" panel panel-primary" ng-controller="MessageCtrl">
        <div class="panel-heading">
            <h3 class="panel-title">Messages</h3>
        </div>
        <br>
        <div class="panel-body">
            <p class="text-center" ng-show="messages.length==0">You have no messages </p>
            <div ng-repeat="message in messages">
                <div ng-class="class(message)">
                    <a class="media-left">
                        <img class="media-object" src="/resources/img/user.png" alt="Generic placeholder image">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Order # {{message.id}}, {{message.date}}
                            <button ng-hide="message.read" class="btn btn-link" ng-click="setImageRead(message.id)">Mark as read
                            </button>
                            <button ng-show="message.read" class="btn btn-link" ng-click="delete(message.id)">Delete
                            </button>
                        </h4>
                        <p>{{message.message}}</p>
                    </div>

                </div>
                <hr>
            </div>


        </div>
    </div>
</div>

<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/message-ctrl.js"></script>

</body>

</html>