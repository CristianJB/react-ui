<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<%--
  Created by IntelliJ IDEA.
  User: politecnico
  Date: 29/03/2016
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="../bootstrap/favicon.ico">

  <link rel='shortcut icon' type='image/x-icon' href='images/aes_sul2.png' />
  <title><decorator:title default="Serviços" /></title>

  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="all"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

  <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="fonts/fonts.googleapis.com.css" />
  <link rel="stylesheet" href="ace/ace-part2.min.css" class="ace-main-stylesheet" />
  <link rel="stylesheet" href="ace/ace-ie.min.css" />
  <link rel="stylesheet" href="ace/ace.min.css" />
  <%--<script src="bootstrap/js/ie10-viewport-bug-workaround.js"></script>--%>
  <decorator:head />

</head>

<body class="no-skin">

<div class="main-container" id="main-container" style="height:0px">

  <script type="text/javascript">
    try
    {
      ace.settings.check('main-container' , 'fixed');
    } catch(e){

    }
  </script>


  <!--			style="left: 0px; top: 0px; z-index: 1; -->

  <div id="sidebar" class="sidebar   h-sidebar   navbar-collapse collapse menu-min" style="left: 0px; top: 0px; z-index: 5px;" >
    <script type="text/javascript">
      try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
    </script>


    <div class="sidebar-shortcuts" id="sidebar-shortcuts">


      <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">

        <button onclick="graphfun1()" class="btn btn-success" >
          <i class="ace-icon fa fa-signal" style="padding:8px"></i>
        </button>
        <script type="text/javascript">
          function graphfun1(){
            var div = document.getElementById('container-barras-2x');
            if (div.style.display !== 'none') {
              div.style.display = 'none';}
            else {
              div.style.display = 'block';}
          }
        </script>


        <button onclick="graphfun2()" class="btn btn-info" >
          <i class="ace-icon fa fa-signal" style="padding:8px"></i>
        </button>
        <script type="text/javascript">
          function graphfun2(){
            var div = document.getElementById('columnrange');
            if (div.style.display !== 'none') {
              div.style.display = 'none';}
            else {
              div.style.display = 'block';}
          }
        </script>


        <button class="btn btn-warning">
          <i class="ace-icon fa fa-users" style="padding:8px"></i>
        </button>

        <!-- <button class="btn btn-default">
           <i class="ace-icon fa fa-pencil" style="padding:8px"></i>
         </button>
 -->
        <button class="btn btn-danger">
          <i class="ace-icon fa fa-cogs" style="padding:8px"></i>
        </button>
      </div>

      <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
        <span class="btn btn-success"></span>

        <span class="btn btn-info"></span>

        <span class="btn btn-warning"></span>

        <!-- <span class="btn btn-default"></span> -->

        <span class="btn btn-danger"></span>
      </div>
    </div><!-- /.sidebar-shortcuts -->


    <!--COMEÇA CÓDIGO LOGIN-->
    <div class="navbar-buttons navbar-header pull-right  collapse navbar-collapse" role="navigation">
      <ul class="nav ace-nav">
        <li class="light-blue">
          <a data-toggle="dropdown" href="#" class="dropdown-toggle">
            <i class="ace-icon fa fa-bell icon-animated-bell" style="margin-top:13px;"></i>
          </a>

          <div class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
            <div class="tabbable">
              <ul class="nav nav-tabs">
                <li class="active">
                  <a data-toggle="tab" href="#navbar-tasks">
                    Tasks
                    <span class="badge badge-danger">4</span>
                  </a>
                </li>

                <li>
                  <a data-toggle="tab" href="#navbar-messages">
                    Messages
                    <span class="badge badge-danger">5</span>
                  </a>
                </li>
              </ul><!-- .nav-tabs -->

              <div class="tab-content">
                <div id="navbar-tasks" class="tab-pane in active">
                  <ul class="dropdown-menu-right dropdown-navbar dropdown-menu">
                    <li class="dropdown-content">
                      <ul class="dropdown-menu dropdown-navbar">
                        <li>
                          <a href="#">
                            <div class="clearfix">
                              <span class="pull-left">Software Update</span>
                              <span class="pull-right">65%</span>
                            </div>

                            <div class="progress progress-mini">
                              <div style="width:65%" class="progress-bar"></div>
                            </div>
                          </a>
                        </li>

                        <li>
                          <a href="#">
                            <div class="clearfix">
                              <span class="pull-left">Hardware Upgrade</span>
                              <span class="pull-right">35%</span>
                            </div>

                            <div class="progress progress-mini">
                              <div style="width:35%" class="progress-bar progress-bar-danger"></div>
                            </div>
                          </a>
                        </li>

                        <li>
                          <a href="#">
                            <div class="clearfix">
                              <span class="pull-left">Unit Testing</span>
                              <span class="pull-right">15%</span>
                            </div>

                            <div class="progress progress-mini">
                              <div style="width:15%" class="progress-bar progress-bar-warning"></div>
                            </div>
                          </a>
                        </li>

                        <li>
                          <a href="#">
                            <div class="clearfix">
                              <span class="pull-left">Bug Fixes</span>
                              <span class="pull-right">90%</span>
                            </div>

                            <div class="progress progress-mini progress-striped active">
                              <div style="width:90%" class="progress-bar progress-bar-success"></div>
                            </div>
                          </a>
                        </li>
                      </ul>
                    </li>

                    <li class="dropdown-footer">
                      <a href="#">
                        See tasks with details
                        <i class="ace-icon fa fa-arrow-right"></i>
                      </a>
                    </li>
                  </ul>
                </div><!-- /.tab-pane -->

                <div id="navbar-messages" class="tab-pane">
                  <ul class="dropdown-menu-right dropdown-navbar dropdown-menu">
                    <li class="dropdown-content">
                      <ul class="dropdown-menu dropdown-navbar">
                        <li>
                          <a href="#">
                            <img src="avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Alex:</span>
																		Ciao sociis natoque penatibus et auctor ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>a moment ago</span>
																	</span>
																</span>
                          </a>
                        </li>

                        <li>
                          <a href="#">
                            <img src="avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Susan:</span>
																		Vestibulum id ligula porta felis euismod ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>20 minutes ago</span>
																	</span>
																</span>
                          </a>
                        </li>

                        <li>
                          <a href="#">
                            <img src="avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Bob:</span>
																		Nullam quis risus eget urna mollis ornare ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>3:15 pm</span>
																	</span>
																</span>
                          </a>
                        </li>

                        <li>
                          <a href="#">
                            <img src="avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Kate:</span>
																		Ciao sociis natoque eget urna mollis ornare ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>1:33 pm</span>
																	</span>
																</span>
                          </a>
                        </li>

                        <li>
                          <a href="#">
                            <img src="avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Fred:</span>
																		Vestibulum id penatibus et auctor  ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>10:09 am</span>
																	</span>
																</span>
                          </a>
                        </li>
                      </ul>
                    </li>

                    <li class="dropdown-footer">
                      <a href="inbox.html">
                        See all messages
                        <i class="ace-icon fa fa-arrow-right"></i>
                      </a>
                    </li>
                  </ul>
                </div><!-- /.tab-pane -->
              </div><!-- /.tab-content -->
            </div><!-- /.tabbable -->
          </div><!-- /.dropdown-menu -->
        </li>

        <li class="light-blue user-min">
          <a data-toggle="dropdown" href="#" class="dropdown-toggle">

            <!--<a  style="padding: 0px;"><img src="aes_sul.png" alt="AES Sul - Planejamento Dinâmico" style="height:100%"></a>
-->
            <i class="ace-icon fa fa-user"></i>
								<span class="user-info">
									<small>Welcome,</small>
									Magdiel
								</span>

            <i class="ace-icon fa fa-caret-down"></i>
          </a>

          <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
            <li>
              <a href="#">
                <i class="ace-icon fa fa-cog"></i>
                Settings
              </a>
            </li>

            <li>
              <a href="profile.html">
                <i class="ace-icon fa fa-user"></i>
                Profile
              </a>
            </li>

            <li class="divider"></li>

            <li>
              <a href="#">
                <i class="ace-icon fa fa-power-off"></i>
                Logout
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </div>

    <!-- TERMINA CÓDIGO LOGIN-->


    <ul class="nav nav-list">

      <li class="hover" style="border-left:1px solid #e4e6e9">
        <a href="#" class="dropdown-toggle">
          <i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								Painel Principal
							</span>

          <b class="arrow fa fa-angle-down"></b>
        </a>
        <b class="arrow"></b>

        <ul class="submenu">

          <!-- Seleção das equipes -->
          <li class="hover" >
            <a href="#" class="dropdown-toggle">
              <i class="menu-icon fa fa-caret-right"></i>
              Equipes
              <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
              <li class="hover">
                <div class="ace-settings-item">
                  <input id="check-1" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl" > Todas equipes </label>
                </div>
                <b class="arrow"></b>
              </li>

              <li class="hover">
                <div class="ace-settings-item">
                  <input id="check-2" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl" > Equipe 233 </label>
                </div>
                <b class="arrow"></b>
              </li>

              <li class="hover">
                <div class="ace-settings-item">
                  <input id="check-3" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl"> Equipe 244 </label>
                </div>
                <b class="arrow"></b>
              </li>

              <!--  menu 4 levels  -->
              <li class="hover">
                <a href="#" >
                  <input id="check-4" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl"> Equipe 913 </label>
                  <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>

                <ul class="submenu">
                  <li class="hover">
                    <a href="#">
                      <input id="check-4.1" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                      <label class="lbl"> Planejado  </label>
                    </a>
                    <b class="arrow"></b>
                  </li>

                  <li class="hover">
                    <a href="#">
                      <input id="check-4.2" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                      <label class="lbl"> Executado  </label>
                    </a>
                    <b class="arrow"></b>
                  </li>
                </ul>
              </li>
              <!--  funções check  -->
              <script type="text/javascript">
                function functioncheck() {
                  clearOverlays();
                  setMapOnAll(null);
                  if(document.getElementById("check-1").checked == true){
                    //setAllMarkers()
                    setEquipeMarkers('233','PlanExec');
                    setEquipeMarkers('244','PlanExec');
                    setEquipeMarkers('913','PlanExec');
                  }
                  if(document.getElementById("check-2").checked == true){
                    setEquipeMarkers('233','PlanExec');
                  }
                  if(document.getElementById("check-3").checked == true){
                    setEquipeMarkers('244','PlanExec');
                  }
                  if(document.getElementById("check-4").checked == true){
                    setEquipeMarkers('913','PlanExec');
                  }
                  if(document.getElementById("check-4.1").checked == true){
                    setEquipeMarkers('913','Plan');
                  }
                  if(document.getElementById("check-4.2").checked == true){
                    setEquipeMarkers('913','Exec');
                  }
                }
              </script>

            </ul>
          </li>
          <!-- Fim seleção das equipes -->

          <li class="hover">
            <a href="typography.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Funções Objetivo
            </a>
            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="elements.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Parâmetros
            </a>
            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="#" class="dropdown-toggle">
              <i class="menu-icon fa fa-caret-right"></i>

              Three Level Menu
              <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
              <li class="hover">
                <a href="#">
                  <i class="menu-icon fa fa-leaf green"></i>
                  Item #1
                </a>

                <b class="arrow"></b>
              </li>

              <li class="hover">
                <a href="#" class="dropdown-toggle">
                  <i class="menu-icon fa fa-pencil orange"></i>

                  4th level
                  <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                  <li class="hover">
                    <a href="#">
                      <i class="menu-icon fa fa-plus purple"></i>
                      Add Product
                    </a>

                    <b class="arrow"></b>
                  </li>

                  <li class="hover">
                    <a href="#">
                      <i class="menu-icon fa fa-eye pink"></i>
                      View Products
                    </a>

                    <b class="arrow"></b>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </li>

      <li class="hover">
        <a href="index.html">
          <i class="menu-icon fa fa-tachometer"></i>
          <span class="menu-text"> Dashboard </span>
        </a>

        <b class="arrow"></b>
      </li>
      <li class="hover">
        <a href="#" class="dropdown-toggle">
          <i class="menu-icon fa fa-list"></i>
          <span class="menu-text"> Tables </span>

          <b class="arrow fa fa-angle-down"></b>
        </a>

        <b class="arrow"></b>

        <ul class="submenu">
          <li class="hover">
            <a href="tables.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Simple &amp; Dynamic
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="jqgrid.html">
              <i class="menu-icon fa fa-caret-right"></i>
              jqGrid plugin
            </a>

            <b class="arrow"></b>
          </li>
        </ul>
      </li>

      <li class="hover">
        <a href="#" class="dropdown-toggle">
          <i class="menu-icon fa fa-pencil-square-o"></i>
          <span class="menu-text"> Forms </span>

          <b class="arrow fa fa-angle-down"></b>
        </a>

        <b class="arrow"></b>

        <ul class="submenu">
          <li class="hover">
            <a href="form-elements.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Form Elements
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="form-elements-2.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Form Elements 2
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="form-wizard.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Wizard &amp; Validation
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="wysiwyg.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Wysiwyg &amp; Markdown
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="dropzone.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Dropzone File Upload
            </a>

            <b class="arrow"></b>
          </li>
        </ul>
      </li>

      <li class="hover">
        <a href="widgets.html">
          <i class="menu-icon fa fa-list-alt"></i>
          <span class="menu-text"> Widgets </span>
        </a>

        <b class="arrow"></b>
      </li>

      <li class="hover">
        <a href="calendar.html">
          <i class="menu-icon fa fa-calendar"></i>
            <span class="menu-text">
                Calendar

                <span class="badge badge-transparent tooltip-error" title="2 Important Events">
                    <i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
                </span>
            </span>
        </a>

        <b class="arrow"></b>
      </li>

      <li class="hover">
        <a href="gallery.html">
          <i class="menu-icon fa fa-picture-o"></i>
          <span class="menu-text"> Gallery </span>
        </a>

        <b class="arrow"></b>
      </li>

      <li class="hover">
        <a href="#" class="dropdown-toggle">
          <i class="menu-icon fa fa-tag"></i>
          <span class="menu-text"> More Pages </span>

          <b class="arrow fa fa-angle-down"></b>
        </a>

        <b class="arrow"></b>

        <ul class="submenu">
          <li class="hover">
            <a href="profile.html">
              <i class="menu-icon fa fa-caret-right"></i>
              User Profile
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="inbox.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Inbox
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="pricing.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Pricing Tables
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="invoice.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Invoice
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="timeline.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Timeline
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="email.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Email Templates
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="login.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Login &amp; Register
            </a>

            <b class="arrow"></b>
          </li>
        </ul>
      </li>

      <li class="hover">
        <a href="#" class="dropdown-toggle">
          <i class="menu-icon fa fa-file-o"></i>

							<span class="menu-text">
								Other Pages

								<span class="badge badge-primary">5</span>
							</span>

          <b class="arrow fa fa-angle-down"></b>
        </a>

        <b class="arrow"></b>

        <ul class="submenu">
          <li class="hover">
            <a href="faq.html">
              <i class="menu-icon fa fa-caret-right"></i>
              FAQ
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="error-404.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Error 404
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="error-500.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Error 500
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="grid.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Grid
            </a>

            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="blank.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Blank Page
            </a>

            <b class="arrow"></b>
          </li>
        </ul>
      </li>
    </ul><!-- /.nav-list -->

    <script type="text/javascript">
      try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
    </script>
  </div>

  <div class="panel-body">
    <div id="container-barras-2x" style="position:absolute;bottom:4%;height:350px;z-index:1"></div>
  </div>

  <div class="panel-body">
    <div id="columnrange" style="position:absolute;bottom:4%; left:50%;height:350px;z-index:1"></div>
  </div>

  <!-- page specific plugin scripts -->

  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
  <script type="text/javascript" src='js/jquery1x.min.js'></script>
  <script type="text/javascript" src='js/jquery.mobile.custom.min.js'></script>

  <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

  <script type="text/javascript" src="js/highcharts/highcharts.js"></script>

  <script type="text/javascript" src="https://code.highcharts.com/highcharts.js"></script>
  <script type="text/javascript" src="https://code.highcharts.com/highcharts-3d.js"></script>
  <script type="text/javascript" src="https://code.highcharts.com/modules/exporting.js"></script>
  <script type="text/javascript" src="https://code.highcharts.com/highcharts-more.js"></script>

  <script type="text/javascript" src="js/ace/ace-elements.min.js"></script>
  <script type="text/javascript" src="js/ace/ace.min.js"></script>
  <script type="text/javascript" src="js/ace/ace-extra.min.js"></script>
  <script type="text/javascript" src="js/ace/html5shiv.min.js"></script>
  <script type="text/javascript" src="js/ace/respond.min.js"></script>

  <script type="text/javascript">
    jQuery(function($) {
      var $sidebar = $('.sidebar').eq(0);
      if( !$sidebar.hasClass('h-sidebar') ) return;

      $(document).on('settings.ace.top_menu' , function(ev, event_name, fixed) {
        if( event_name !== 'sidebar_fixed' ) return;

        var sidebar = $sidebar.get(0);
        var $window = $(window);

        //return if sidebar is not fixed or in mobile view mode
        var sidebar_vars = $sidebar.ace_sidebar('vars');
        if( !fixed || ( sidebar_vars['mobile_view'] || sidebar_vars['collapsible'] ) ) {
          $sidebar.removeClass('lower-highlight');
          //restore original, default marginTop
          sidebar.style.marginTop = '';

          $window.off('scroll.ace.top_menu')
          return;
        }


        var done = false;
        $window.on('scroll.ace.top_menu', function(e) {

          var scroll = $window.scrollTop();
          scroll = parseInt(scroll / 4);//move the menu up 1px for every 4px of document scrolling
          if (scroll > 17) scroll = 17;


          if (scroll > 16) {
            if(!done) {
              $sidebar.addClass('lower-highlight');
              done = true;
            }
          }
          else {
            if(done) {
              $sidebar.removeClass('lower-highlight');
              done = false;
            }
          }

          sidebar.style['marginTop'] = (scroll)+'px';
        }).triggerHandler('scroll.ace.top_menu');

      }).triggerHandler('settings.ace.top_menu', ['sidebar_fixed' , $sidebar.hasClass('sidebar-fixed')]);

      $(window).on('resize.ace.top_menu', function() {
        $(document).triggerHandler('settings.ace.top_menu', ['sidebar_fixed' , $sidebar.hasClass('sidebar-fixed')]);
      });
    });
  </script>




<!-- Fixed navbar -->  <!--
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="padding: 0px;"><img src="imagens/aes-sul.jpg" alt="imagem" style="height:100%"></a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="mapa-rotas.html">Mapa Rotas</a></li>
        <li><a href="visualiza-rota.html?idRotaPlanejada=16841&idRotaExecutada=16813">Exibir Rotas</a></li>
        <li><a href="carrega-mapa.html">Upload de Arquivos</a></li>
        <li><a href="lista-servicos.html">Listar Serviços</a></li>
        <li><a href="mapa-servicos.html">Exibir Mapa</a></li>
        <%--<li><a href="carrega-mapa.html">Importar Arquivos</a></li>
        <li><a href="lista-servicos.html">Listar Serviços</a></li>
        <li><a href="mapa-servicos.html">Mapa dos Serviços</a></li>
        <li><a href="mapa-equipes.html">Mapa das Equipes</a></li>--%>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</nav>

<decorator:body />
<!--footer-->
<div id="footer" class="footer">

  <div class="footer">
    <div class="footer-inner">
      <div class="footer-content" style="height:45px; bottom:5px">

        <style type="text/css">
          #vertical{
            position:relative;
            top:0%; /* adjust this as needed */
            left:0;
            z-index: 3;
            width:100%;
            text-align:center;
          }
          #container {
            position:relative;
            height:35px;
            /*border:1px solid #000; */
          }
        </style>
        <div id="container">
          <div id="vertical">

            <span class="action-buttons">
                <a
                        style="padding: 0px;"><img src="images/aes_sul.png" alt="AES Sul - Planejamento Dinâmico" style="height:25px">
                </a>
            </span>

            <span class="bigger-100">
                Planejamento Dinâmico &copy; 2016
            </span>

            <span class="action-buttons">
                <a style="padding: 0px;"><img src="images/ufsm2.png" alt="UFSM - Universidade Federal de Santa Maria" style="height:30px">
                </a>
            </span>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!--End footer-->

</body>
</html>
