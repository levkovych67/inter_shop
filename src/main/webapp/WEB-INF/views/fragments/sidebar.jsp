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
                <a ng-repeat="category in categories" ng-href="/category/{{category.id}}" ng-include="'tree_view'" >
                </a>
            </ul>
            <br>
            <div class="form-group">
                <p class="text-center">Search by Price</p>
                <div class="input-group">
                    <input type="text" placeholder="from" class="form-control">
                    <input type="text" placeholder="to" class="form-control">
                    <span class="input-group-addon "><a href="google" class="fa fa-search "></a> </span>

                </div>
            </div>
        </div>

    </div>
</div>

