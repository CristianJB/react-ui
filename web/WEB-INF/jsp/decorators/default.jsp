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
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

  <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="fonts/fonts.googleapis.com.css" />
  <link rel="stylesheet" href="ace/ace-part2.min.css" class="ace-main-stylesheet" />
  <link rel="stylesheet" href="ace/ace-ie.min.css" />
  <link rel="stylesheet" href="ace/ace.min.css" />
  <%--<script src="bootstrap/js/ie10-viewport-bug-workaround.js"></script>--%>


  <!-- page specific plugin styles -->
  <link rel="stylesheet" href="ace/jquery-ui.custom.min.css" />
  <link rel="stylesheet" href="ace/chosen.min.css" />
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
                              <span class="pull-left">Manutenção corretiva</span>
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
                              <span class="pull-left">Manutenção preventiva</span>
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
                              <span class="pull-left">Compra de equipamentos</span>
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
                              <span class="pull-left">Emergências atendidas</span>
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
																		<span class="blue">Magdiel:</span>
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
																		<span class="blue">Vinícius:</span>
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
									Usuário
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
      <!-- painel principal-->
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

          <li class="hover">
            <a href="carrega-ordens.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Funções Objetivo
            </a>
            <b class="arrow"></b>
          </li>

          <li class="hover">
            <a href="carrega-ordens.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Parâmetros
            </a>
            <b class="arrow"></b>
          </li>

        </ul>
      </li>

      <!-- Posto tecnico-->
      <li class="hover pull-right" style="border-right:1px solid #e4e6e9">
        <a href="#" class="dropdown-toggle" >
          <i class="menu-icon fa fa-users"></i>
							<span class="menu-text">
								Posto Técnico/Equipes
							</span>
          <b class="arrow fa fa-angle-down"></b>
        </a>
        <b class="arrow"></b>

        <ul class="submenu">

          <!-- Posto técnico Santa Maria -->
          <li class="hover" id="PT1"  >
            <a href="#" class="dropdown-toggle">
              <i class="menu-icon fa fa-caret-right"></i>
              Posto técnico 1
              <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>

            <ul class="submenu">
              <li class="hover">
                <a href="#" >
                  <input id="check-PT1" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl" > Todas equipes </label>
                </a>
                <b class="arrow"></b>
              </li>

              <!--  Equipe 913  -->
              <li class="hover">
                <a href="#" >
                  <input id="check-913" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl"> Equipe 913 </label>
                  <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>

                <ul class="submenu">
                  <li class="hover">
                    <a href="#">
                      <input id="check-913.1" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                      <label class="lbl"> Planejado  </label>
                    </a>
                    <b class="arrow"></b>
                  </li>

                  <li class="hover">
                    <a href="#">
                      <input id="check-913.2" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                      <label class="lbl"> Executado  </label>
                    </a>
                    <b class="arrow"></b>
                  </li>
                </ul>

              </li>
            </ul>
          </li>

          <!-- PT Canoas -->
          <li class="hover" id="PT2">
            <a href="#" class="dropdown-toggle">
              <i class="menu-icon fa fa-caret-right"></i>
              Posto técnico 2
              <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>

            <ul class="submenu">
              <li class="hover">
                <a href="#" >
                  <input id="check-PT2" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl" > Todas equipes </label>
                </a>
                <b class="arrow"></b>
              </li>

              <li class="hover">
                <a href="#" >
                  <input id="check-233" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl" > Equipe 233 </label>
                  <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>

                  <ul class="submenu">
                    <li class="hover">
                      <a href="#">
                        <input id="check-233.1" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                        <label class="lbl"> Planejado  </label>
                      </a>
                      <b class="arrow"></b>
                    </li>

                    <li class="hover">
                      <a href="#">
                        <input id="check-233.2" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                        <label class="lbl"> Executado  </label>
                      </a>
                      <b class="arrow"></b>
                    </li>
                  </ul>
              </li>

              <li class="hover">
                <a href="#" >
                  <input id="check-244" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                  <label class="lbl"> Equipe 244 </label>
                  <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>

                  <ul class="submenu">
                    <li class="hover">
                      <a href="#">
                        <input id="check-244.1" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                        <label class="lbl"> Planejado  </label>
                      </a>
                      <b class="arrow"></b>
                    </li>

                    <li class="hover">
                      <a href="#">
                        <input id="check-244.2" type="checkbox" class="ace ace-checkbox-2"  onclick="functioncheck();" />
                        <label class="lbl"> Executado  </label>
                      </a>
                      <b class="arrow"></b>
                    </li>
                  </ul>

              </li>
            </ul>
          </li>
          <!-- PT 3 -->
          <li class="hover" id="PT3">
            <a href="carrega-ordens.html">
              <i class="menu-icon fa fa-caret-right"></i>
              Posto técnico 3
            </a>
            <b class="arrow"></b>
          </li>
        </ul>

        <!--  funções check  -->
        <script type="text/javascript">
          function functioncheck() {
            clearOverlays();
            setMapOnAll(null);
            if(document.getElementById("check-PT1").checked == true){
              //setAllMarkers()
              setEquipeMarkers('913','PlanExec');
            }

            if(document.getElementById("check-PT2").checked == true){
              //setAllMarkers()
              setEquipeMarkers('233','PlanExec');
              setEquipeMarkers('244','PlanExec');
            }

            if(document.getElementById("check-233").checked == true){
              setEquipeMarkers('233','PlanExec');
            }
              if(document.getElementById("check-233.1").checked == true){
                setEquipeMarkers('233','Plan');
              }
              if(document.getElementById("check-233.2").checked == true){
                setEquipeMarkers('233','Exec');
              }

            if(document.getElementById("check-244").checked == true){
              setEquipeMarkers('244','PlanExec');
            }
              if(document.getElementById("check-244.1").checked == true){
                setEquipeMarkers('244','Plan');
              }
              if(document.getElementById("check-244.2").checked == true){
                setEquipeMarkers('244','Exec');
              }

            if(document.getElementById("check-913").checked == true){
              setEquipeMarkers('913','PlanExec');
            }
              if(document.getElementById("check-913.1").checked == true){
                setEquipeMarkers('913','Plan');
              }
              if(document.getElementById("check-913.2").checked == true){
                setEquipeMarkers('913','Exec');
              }
          }
        </script>

        <!-- Fim seleção das equipes -->
      </li>
            <script type="text/javascript">

            $(document).ready(function()
            {
			    // var bases = {"0" : "Selecione a base", "1" : "Santa Maria","2" : "Canoas"};

                $.ajax({
                    url: "bases.json", dataType: 'json', async: false, success: function( data )
                    {
                        var $select = $('#select-base');

                        $select.html('');
                        var options = "";
                        $.each(data, function(key, value){
                            options += '<option value="' + key + '">' + value.nome + '</option>';
                        });
                        $select.html(options);
                        alert(options);
                    }
                });
            });

            </script>

      <!-- Bases-->
      <li class="hover pull-right" style="height:44px;">
        <div class="widget-main">
          <div style="width:150px;">
            <select class="chosen-select form-control" id="select-base" onchange="base()" data-placeholder="Escolha uma base...">
            </select>

              <script type="text/javascript">

                function base() {
                  var e = document.getElementById("select-base");
                  var baseOptions = e.options[e.selectedIndex].value;
                  document.getElementById("PT1").style.display = "none";
                  document.getElementById("PT2").style.display = "none";
                  document.getElementById("PT3").style.display = "none";

                  if(baseOptions==1) // Santa Maria
                  {
                    centerMap = { "lat" : "-29.695060000" , "long" : "-53.725150000" };
                    initMap();
                    document.getElementById("PT1").style.display = "block";
                  }
                  if(baseOptions==0) // Canoas
                  {
                    centerMap = { "lat" : "-29.892960000" , "long" : "-51.128680000" };
                    initMap();
                    document.getElementById("PT2").style.display = "block";
                  }
                  if(baseOptions>=2)
                  {
                    document.getElementById("PT3").style.display = "block";
                  }
                }
              </script>

          </div>
        </div>
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

<!-- aqui-->

  <script type="text/javascript" src="js/ace/chosen.jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.autosize.min.js"></script>

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



    //related to form-elements
      if(!ace.vars['touch']) {
        $('.chosen-select').chosen({allow_single_deselect:true});
        //resize the chosen on window resize

        $(window)
                .off('resize.chosen')
                .on('resize.chosen', function() {
                  $('.chosen-select').each(function() {
                    var $this = $(this);
                    $this.next().css({'width': $this.parent().width()});
                  })
                }).trigger('resize.chosen');
        //resize chosen on sidebar collapse/expand
        $(document).on('settings.ace.chosen', function(e, event_name, event_val) {
          if(event_name != 'sidebar_collapsed') return;
          $('.chosen-select').each(function() {
            var $this = $(this);
            $this.next().css({'width': $this.parent().width()});
          })
        });

      }

      $('textarea[class*=autosize]').autosize({append: "\n"});
      $('textarea.limited').inputlimiter({
        remText: '%n character%s remaining...',
        limitText: 'max allowed : %n.'
      });

      $.mask.definitions['~']='[+-]';
      $('.input-mask-date').mask('99/99/9999');
      $('.input-mask-phone').mask('(999) 999-9999');
      $('.input-mask-eyescript').mask('~9.99 ~9.99 999');
      $(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});


      var tag_input = $('#form-field-tags');
      try{
        tag_input.tag(
                {
                  placeholder:tag_input.attr('placeholder'),
                  //enable typeahead by specifying the source array
                  source: ace.vars['BASES'],//defined in ace.js >> ace.enable_search_ahead
                }
        )

        //programmatically add a new
        var $tag_obj = $('#form-field-tags').data('tag');
        $tag_obj.add('Programmatically Added');
      }
      catch(e) {
        //display a textarea for old IE, because it doesn't support this plugin or another one I tried!
        tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
        //$('#form-field-tags').autosize({append: "\n"});
      }

      //chosen plugin inside a modal will have a zero width because the select element is originally hidden
      //and its width cannot be determined.
      //so we set the width after modal is show
      $('#modal-form').on('shown.bs.modal', function () {
        if(!ace.vars['touch']) {
          $(this).find('.chosen-container').each(function(){
            $(this).find('a:first-child').css('width' , '210px');
            $(this).find('.chosen-drop').css('width' , '210px');
            $(this).find('.chosen-search input').css('width' , '200px');
          });
        }
      })

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
        <li><a href="visualiza-rota.html<%--?idRotaPlanejada=16841&idRotaExecutada=16813--%>">Exibir Rotas</a></li>
        <li><a href="carrega-mapa.html">Importar Arquivos</a></li>
        <li><a href="lista-servicos.html">Listar Serviços</a></li>
        <li><a href="mapa-servicos.html">Exibir Mapa</a></li>
        <%--<li><a href="carrega-mapa.html">Importar Arquivos</a></li>
        <li><a href="lista-servicos.html">Listar Serviços</a></li>
        <li><a href="mapa-servicos.html">Mapa dos Serviços</a></li>
        <li><a href="mapa-equipes.html">Mapa das Equipes</a></li>--%>
      </ul>
    </div><!--/.nav-collapse -->



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
