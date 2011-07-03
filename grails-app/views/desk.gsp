
<html>
    <head>
        <title>Welcome to Grails</title>
        <meta name="layout" content="application" />
        <link type="text/css" rel="stylesheet" href="${resource(dir:'css/layout', file:'layout-default-latest.css')}" />
        <g:javascript src="jquery/jquery-1.6.2.min.js" />
        <g:javascript src="jquery/jquery-ui-1.8.14.custom.min.js" />
        <g:javascript src="layout/jquery.layout-latest.js" />
        <script type="text/javascript">
$(document).ready(function () {
	$('body').layout({
                		//	enable showOverflow on west-pane so CSS popups will overlap north pane
			west__showOverflowOnHover: true

		//	reference only - these options are NOT required because 'true' is the default
		,	closable:				true	// pane can open & close
		,	resizable:				true	// when open, pane can be resized 
		,	slidable:				true	// when closed, pane can 'slide' open over other panes - closes on mouse-out

		//	some resizing/toggling settings
		,	north__slidable:		false	// OVERRIDE the pane-default of 'slidable=true'
		,	north__togglerLength_closed: '100%'	// toggle-button is full-width of resizer-bar
		,	north__spacing_closed:	20		// big resizer-bar when open (zero height)
		,	south__resizable:		false	// OVERRIDE the pane-default of 'resizable=true'
		,	south__spacing_open:	0		// no resizer-bar when open (zero height)
		,	south__spacing_closed:	20		// big resizer-bar when open (zero height)
		//	some pane-size settings
		,	west__minSize:			100
		,	east__size:				300
		,	east__minSize:			200
		,	east__maxSize:			Math.floor(screen.availWidth / 2) // 1/2 screen width
		,	center__minWidth:		100

		,	useStateCookie:			true
         });
});
</script>
    </head>
    <body>
    <div class="ui-layout-center">center
    <p><a href="http://layout.jquery-dev.net/demos.html">go to the demos page</a></p>
    <p>* pane-resizing is disabled because ui.draggable.js is not linked</p>
    <p>* pane-animation is disabled because ui.effects.js is not linked</p>
    </div>
    <div class="ui-layout-north">north</div>
    <div class="ui-layout-west">west</div>
    </body>
</html>
