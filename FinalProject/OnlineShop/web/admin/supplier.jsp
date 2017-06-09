<%-- 
    Document   : supplier
    Created on : May 27, 2017, 10:21:29 AM
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
        <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-reset.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

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
                        <div class="col-sm-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    Suppliers
                                    <span class="tools pull-right">
                                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                                        <a href="javascript:;" class="fa fa-cog"></a>
                                        <a href="javascript:;" class="fa fa-times"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
                                    <div class="adv-table editable-table ">
                                        <div class="clearfix">
                                            <div class="btn-group">
                                                <button id="editable-sample_new" class="btn btn-primary">
                                                    Add New <i class="fa fa-plus"></i>
                                                </button>
                                            </div>
                                            <div class="btn-group pull-right">
                                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                                                </button>
                                                <ul class="dropdown-menu pull-right">
                                                    <li><a href="#">Print</a></li>
                                                    <li><a href="#">Save as PDF</a></li>
                                                    <li><a href="#">Export to Excel</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="space15"></div>
                                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                            <thead>
                                                <tr>
                                                    <th class="hidden">Supplier Id</th>
                                                    <th>Supplier Name</th>
                                                    <th>Address</th>
                                                    <th>Phone Number</th>
                                                    <th>Email</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <s:iterator value="suppliers">
                                                    <tr>
                                                        <td class="hidden"><s:property value="supplierId"/></td>
                                                        <td><s:property value="supplierName"/></td>
                                                        <td><s:property value="address"/></td>
                                                        <td><s:property value="phoneNumber"/></td>
                                                        <td><s:property value="email"/></td>
                                                        <td><a class="edit" href="javascript:;">Edit</a></td>
                                                        <td><a class="delete" href="javascript:;">Delete</a></td>
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
        <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/jquery-migrate.js"></script>

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

        <script type="text/javascript" src="js/data-tables/jquery.dataTables.js"></script>
        <script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

        <!--common script init for all pages-->
        <script src="js/scripts.js"></script>

        <!--script for this page only-->
        <script src="js/table-editable.js"></script>

        <!-- END JAVASCRIPTS -->
        <script>
            jQuery(document).ready(function () {
                EditableTable.init();
            });
        </script>
    </body>
</html>
