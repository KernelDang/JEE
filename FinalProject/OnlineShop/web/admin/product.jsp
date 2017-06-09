<%-- 
    Document   : product
    Created on : May 25, 2017, 1:49:45 PM
    Author     : Kernel Dang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="ThemeBucket">

        <meta http-equiv=”X-UA-Compatible” content=”IE=EmulateIE9”>
        <meta http-equiv=”X-UA-Compatible” content=”IE=9”>

        <link rel="shortcut icon" href="images/favicon.png">
        <title>BucketAdmin</title>
        <!--Core CSS -->
        <!--Core CSS -->
        <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-reset.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

        <!--dynamic table-->
        <link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
        <link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
        <link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />
    </head>
    <body>
        <section id="container">
            <!--header start-->
            <%@include file="../WEB-INF/jspf/admin/header.jspf" %>
            <!--header end-->
            <!--sidebar start-->
            <%@include file="../WEB-INF/jspf/admin/left_sidebar.jspf" %>
            <!--sidebar end-->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    Add Product
                                </header>
                                <div class="panel-body">
                                    <div class="position-center">
                                        <form method="POST" role="form" action="addProduct">
                                            <div class="form-group">
                                                <label for="product-name">Product Name</label>
                                                <input  name="product.productName" type="text" class="form-control" id="product-name" placeholder="Product Name">
                                            </div>
                                            <div class="form-group">
                                                <label for="price-unit">Price Unit</label>
                                                <input name="product.priceUnit" type="number" class="form-control" id="price-unit" placeholder="Price Unit">
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <textarea name="product.description" rows="4" class="form-control" id="description" placeholder="Description"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="supplier">Supplier</label>
                                                <select name="product.supplier.supplierId" class="form-control" id="supplier">
                                                    <option>Others</option>
                                                    <s:iterator value="suppliers">
                                                        <option value="<s:property value="supplierId"/>"><s:property value="supplierName"/></option>
                                                    </s:iterator>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="remain-quantity">Remain Quantity</label>
                                                <input name="product.remainQuantity" type="number" class="form-control" id="remain-quantity">
                                            </div>
                                            <div class="form-group">
                                                <label for="image">Image</label>
                                                <input name="product.images" multiple="true" type="file" id="image" accept="image/*">
                                            </div>
                                            <button type="submit" class="btn btn-info">Add Product</button>
                                        </form>
                                    </div>

                                </div>
                            </section>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    Products
                                    <span class="tools pull-right">
                                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                                        <a href="javascript:;" class="fa fa-cog"></a>
                                        <a href="javascript:;" class="fa fa-times"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
                                    <div class="adv-table">
                                        <table  class="display table table-bordered table-striped" id="dynamic-table">
                                            <thead>
                                                <tr>
                                                    <th>Image</th>
                                                    <th>Name</th>
                                                    <th>Price Unit</th>
                                                    <th style="width:40%">Description</th>
                                                    <th>Supplier</th>
                                                    <th>Remain Quantity</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <s:iterator value="products">
                                                    <tr>
                                                        <td><img width="64" height="64" src="../<s:property value="images.iterator.next.url"/>"/></td>
                                                        <td><s:property value="productName"/></td>
                                                        <td><s:property value="priceUnit"/></td>
                                                        <td><s:property value="description"/></td>
                                                        <td><s:property value="supplier.supplierName"/></td>
                                                        <td><s:property value="remainQuantity"/></td>
                                                    </tr>
                                                </s:iterator>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </section>
            </section>
            <!--main content end-->
            <!--right sidebar start-->
            <%@include file="../WEB-INF/jspf/admin/right_sidebar.jspf" %>
            <!--right sidebar end-->
        </section>
        <!-- Placed js at the end of the document so the pages load faster -->
        <!--Core js-->
        <script src="js/jquery.js"></script>
        <script src="bs3/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
        <!--Easy Pie Chart-->
        <script src="js/easypiechart/jquery.easypiechart.js"></script>
        <!--Sparkline Chart-->
        <script src="js/sparkline/jquery.sparkline.js"></script>
        <!--jQuery Flot Chart-->
        <script src="js/flot-chart/jquery.flot.js"></script>
        <script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="js/flot-chart/jquery.flot.resize.js"></script>
        <script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

        <!--dynamic table-->
        <script type="text/javascript" language="javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
        <script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
        <!--common script init for all pages-->
        <script src="js/scripts.js"></script>

        <!--dynamic table initialization -->
        <script src="js/dynamic_table_init.js"></script>
    </body>
</html>