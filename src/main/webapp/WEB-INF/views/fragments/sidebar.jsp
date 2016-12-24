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

            <form class="form-group col-xs-12" method="POST" action="/product/get-by-price">
                <p class="text-center">Search by Price</p>
                <div class="input-group">
                    <input type="number"   name="startPrice" placeholder="start Price" class="form-control">
                    <input type="number" name="endPrice"  placeholder="end Price" class="form-control">
                </div>
                <button type="submit" class="btn navbar-btn btn-block">Search</button>
                <a href="/" class="btn btn-primary btn-block">Show All</a>
            </form>
        </div>

    </div>
</div>

