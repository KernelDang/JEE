<%-- 
    Document   : order
    Created on : May 25, 2017, 1:43:40 PM
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
        <link rel="shortcut icon" href="images/favicon.png">

        <title>Orders</title>

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

        <!-- Just for debugging purposes. Don't actually copy this line! -->
        <!--[if lt IE 9]>
        <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

        <section id="container" >
            <!--header start-->
            <%@include file="../WEB-INF/jspf/admin/header.jspf" %>
            <!--header end-->
            <!--sidebar start-->
            <%@include file="../WEB-INF/jspf/admin/left_sidebar.jspf" %>
            <!--sidebar end-->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <!-- page start-->
                    <div class="row">
                        <div class="col-sm-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    Orders
                                    <span class="tools pull-right">
                                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                                        <a href="javascript:;" class="fa fa-cog"></a>
                                        <a href="javascript:;" class="fa fa-times"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
                                    <div class="adv-table">
                                        <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                                            <thead>
                                                <tr>
                                                    <th>Receiver Name</th>
                                                    <th>Receiving Address</th>
                                                    <th>Receiver Phone Number</th>
                                                    <th>Schedule Received Date</th>
                                                    <th>Received Date</th>
                                                    <th>Paid</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <s:iterator value="orders">
                                                    <tr>
                                                        <td><s:property value="receiverName"/></td>
                                                        <td><s:property value="receivingAddress"/></td>
                                                        <td><s:property value="receiverPhoneNumber"/></td>
                                                        <td><s:property value="scheduleReceivedDate"/></td>
                                                        <td><s:property value="receivedDate"/></td>
                                                        <td><s:property value="paid"/></td>
                                                    </tr>
                                                </s:iterator>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                    <!-- page end-->
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
