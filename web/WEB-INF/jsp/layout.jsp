<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="f"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <!-- META SECTION -->
            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    
        <link rel="icon" href="<c:url value="/resources/favicon.ico"/>" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        
        <link href="<c:url value="/resources/css/theme-default.css"/>" rel="stylesheet" type="text/css"/>
        <!-- EOF CSS INCLUDE -->
    </head>
    <body>
        
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar">
            
                <!-- START X-NAVIGATION -->
                <ul class="x-navigation">
                <li class="xn-icon-button pull-right">

    <a class="mb-control" data-box="#mb-signout" href="#">

        <span class="fa fa-sign-out"></span>
    </a>

</li>    
         <li class="xn-logo">
                        <a href="index.html">ATLANT</a>
                        <a href="#" class="x-navigation-control"></a>
                    </li>  
                    <li class="xn-title"> WELL COME USER </li>
                    <li class="xn-title">Navigation</li>
                    <li>
                        <a href="index.htm"><span class="fa fa-desktop"></span> <span class="xn-text">Dashboard</span></a>
                    </li>  
                    <li>
                        <a href="index.htm"><span class="fa fa-files-o"></span> <span class="xn-text">Reports</span></a>
                    </li>   
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-cogs"></span> <span class="xn-text">UI Kits</span></a>                        
                        <ul>
                            <li><a href="cust.htm"><span class="fa fa-heart"></span> Customer</a></li>                            
                            <li><a href="bargen.htm"><span class="fa fa-cogs"></span> Barcode Genarator</a></li>
                            <li><a href="pos.htm"><span class="fa fa-square-o"></span> POS</a></li>                            
                            <li><a href="product.htm"><span class="fa fa-pencil-square-o"></span>Products</a></li>
                            <li><a href="ui-icons.html"><span class="fa fa-magic"></span> Icons</a><div class="informer informer-warning">+679</div></li>
                            <li><a href="ui-typography.html"><span class="fa fa-pencil"></span>Sales Report</a></li>
                            <li><a href="ui-portlet.html"><span class="fa fa-th"></span> Recent Storck</a></li>
                            <li><a href="ui-sliders.html"><span class="fa fa-arrows-h"></span> Sliders</a></li>
                            <li><a href="ui-alerts-popups.html"><span class="fa fa-warning"></span> Alerts & Popups</a></li>                            
                            <li><a href="ui-lists.html"><span class="fa fa-list-ul"></span> Lists</a></li>
                            <li><a href="ui-tour.html"><span class="fa fa-random"></span> Tour</a></li>
                        </ul>
                    </li>                    
                </ul>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                    <!-- TOGGLE NAVIGATION -->
                    <li class="xn-icon-button">
                        <a href="#" class="x-navigation-minimize"><span class="fa fa-dedent"></span></a>
                    </li>
                    <!-- END TOGGLE NAVIGATION -->                    
                </ul>
                <!-- END X-NAVIGATION VERTICAL -->                     
                
                <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="#">Link</a></li>                    
                    <li class="active">Active</li>
                </ul>
                <!-- END BREADCRUMB -->                
                
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Well Come User</h2>
                </div>                   
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                
                    <div class="row">
                        <div class="col-md-12">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Window</h3>
                                </div>
                                <div class="panel-body">
                                  <tiles:insertAttribute name="body" />
                                </div>
                            </div>

                        </div>
                    </div>
                
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->

        <!-- MESSAGE BOX-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
                    <div class="mb-content">
                        <p>Are you sure you want to log out?</p>                    
                        <p>Press No if youwant to continue work. Press Yes to logout current user.</p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <a href="pages-login.html" class="btn btn-success btn-lg">Yes</a>
                            <button class="btn btn-default btn-lg mb-control-close">No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->
        <audio id="audio-alert" src="<c:url value="/resources/audio/alert.mp3"/>" preload="auto"></audio>
        <audio id="audio-fail" src="<c:url value="/resources/audio/fail.mp3"/>" preload="auto"></audio>
        <!-- END PRELOADS -->                 
        
    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script  type="text/javascript" src="<c:url value="/resources/js/plugins/jquery/jquery.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/plugins/jquery/jquery-ui.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/plugins/bootstrap/bootstrap.min.js"/>"></script>        
        <!-- END PLUGINS -->

        <!-- THIS PAGE PLUGINS -->

        <!-- END PAGE PLUGINS -->         

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="<c:url value="/resources/js/plugins.js"/>"></script>        
        <script type="text/javascript" src="<c:url value="/resources/js/actions.js"/>"></script>        
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->         
    </body>
</html>






