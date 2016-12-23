<br>

<script type="text/ng-template" id="tree_view">
    {{ category.title }}
    <ul ng-if="category.subcategories">
        <a ng-repeat="category in category.subcategories" ng-include="'tree_view'"
           ng-href="/category/{{category.id}}">
        </a>
    </ul>
</script>
<div class="col-md-2 col-xs-6 row" ng-controller="SideBarCtrl as bar">
    <div class="panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Categories</h3>
        </div>
        <div class="white panel-body">
            <ul class="row">
                <li ng-repeat="category in categories" ng-include="'tree_view'">
                </li>
            </ul>
            <br>
            <div class="form-group">
                <p class="text-center">Search by Price</p>
                <div class="input-group">
                    <input type="text" placeholder="from" class="form-control"
                           aria-label="Amount (to the nearest dollar)">

                    <input type="text" placeholder="to" class="form-control"
                           aria-label="Amount (to the nearest dollar)">
                    <span class="input-group-addon "><a href="google" class="fa fa-search "></a> </span>

                </div>
            </div>
        </div>

    </div>
</div>

