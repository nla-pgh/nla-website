$(function() {
	$("#dialog-vision").dialog({
		autoOpen: false,
		minWidth: 500,
		modal: true,
		buttons: {
			"Learn how you can help us": function() {
				window.open("/take-action");
				$( this ).dialog( "close" );
			},
			Close: function() {
				$( this ).dialog( "close" );
			}
		}
	});

	$("#dialog-mission").dialog({
		autoOpen: false,
		minWidth: 500,
		modal: true,
		buttons: {
			"Learn how you can help us": function() {
				$( this ).dialog( "close" );
				window.open("/take-action");
			},
			Close: function() {
				$( this ).dialog( "close" );
			}
		}
	});

	$("#prezi").append('<param name="wmode" value="opaque">');
	$("#documents p").prepend('<span class="ui-icon ui-icon-document" style="float: left"></span>');
});

function show_vision() {
	$("#dialog-vision").dialog('open');
}

function show_mission() {
	$("#dialog-mission").dialog('open');
}
