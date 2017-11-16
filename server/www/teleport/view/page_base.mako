<!DOCTYPE html>
    <%!
        import time
        page_icon_class_ = ''
        page_title_ = []
        page_id_ = []
    %>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh_CN">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black-translucent" name="apple-mobile-web-app-status-bar-style">
    <title>${self.attr.page_title_[-1]}::TELEPORT</title>
    <link rel="shortcut icon" href="${ static_url('favicon.png') }">

    <link href="${ static_url('plugins/bootstrap/css/bootstrap.min.css') }" rel="stylesheet" type="text/css"/>
    <link href="${ static_url('plugins/font-awesome/css/font-awesome.min.css') }" rel="stylesheet">
    <link href="${ static_url('plugins/gritter/css/jquery.gritter.css') }" rel="stylesheet">
    <link href="${ static_url('plugins/jquery/jquery.mCustomScrollbar.min.css') }" rel="stylesheet">

    <link href="${ static_url('css/style.css') }" rel="stylesheet" type="text/css"/>

    <%block name="extend_css_file"/>
    <%block name="embed_css"/>
</head>
<body class="page-header-fixed page-sidebar-fixed">

<div id="page-header" class="page-header navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">

        <div class="brand"><a href="http://teleport.eomsoft.net" target="_blank"><span class="logo"></span></a></div>

        <div class="breadcrumb-container">
            <%block name="breadcrumb">
                <ol class="breadcrumb">
                    %for i in range(len(self.attr.page_title_)):
                        %if i == 0:
                            <li><i class="${self.attr.page_icon_class_}"></i> ${self.attr.page_title_[i]}</li>
                        %else:
                            <li>${self.attr.page_title_[i]}</li>
                        %endif
                    %endfor
                </ol>
            </%block>
        </div>

        <div class="page-header-extra" style="display:inline-block;float:right;padding-top:12px;">
##             <ol class="bread-crumb">
##                 <li><i class="fa fa-clock-o fa-fw"></i> <span id="system-timer">111</span></li>
##             </ol>
        </div>
    </div>
</div>

<div id="page-sidebar" class="page-sidebar">
    <%block name="sidebar_nav_menu">
        <%include file="_sidebar_nav_menu.mako" args="page_id='${self.attr.page_id_}'" />
    </%block>
</div>

<!-- begin #page-content -->
<div id="page-content" class="page-content">
    ${self.body()}
</div>
<!-- end #page-content -->


    ## <div class="modal fade" id="dlg-ywl-message-box" tabindex="-1" role="dialog">
    ##     <div class="modal-dialog" role="document">
    ##         <div class="modal-content">
    ##             <div class="modal-header">
    ##                 <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    ##                 <h4 class="modal-title" ywl-title></h4>
    ##             </div>
    ##             <div class="modal-body" ywl-content style="font-size: 20px">
    ##
    ##             </div>
    ##             <div class="modal-footer">
    ##                 <input type="hidden" ywl-record-id="" ywl-row-id="">
    ##                 <button type="button" class="btn btn-success btn-sm" ywl-btn-ok="ok"><i class="glyphicon glyphicon-ok"></i></button>
    ##                 <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i></button>
    ##             </div>
    ##         </div>
    ##     </div>
    ## </div>

    <%block name="extend_content" />
<script type="text/javascript" src="${ static_url('plugins/underscore/underscore.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/jquery/jquery-2.2.3.min.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/jquery/js.cookie.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/bootstrap/js/bootstrap.min.js') }"></script>
<!--[if lt IE 9]>
<script src="${ static_url('plugins/html5shiv/html5shiv.min.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/json2/json2.js') }"></script>
<![endif]-->
<script type="text/javascript" src="${ static_url('plugins/jquery/jquery.mousewheel.min.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/gritter/js/jquery.gritter.js') }"></script>
<script type="text/javascript" src="${ static_url('plugins/jquery/jquery.mCustomScrollbar.concat.min.js') }"></script>

<script type="text/javascript" src="${ static_url('js/tp-utils.js') }"></script>
<script type="text/javascript" src="${ static_url('js/tp-const.js') }"></script>
<script type="text/javascript" src="${ static_url('js/teleport.js') }"></script>
<script type="text/javascript" src="${ static_url('js/teleport/common.js') }"></script>
<script type="text/javascript" src="${ static_url('js/teleport/controls.js') }"></script>


    <%block name="extend_js_file"/>

<script type="text/javascript">
    $app.active_menu(${self.attr.page_id_});
</script>

    <%block name="embed_js" />


</body>
</html>