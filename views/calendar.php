
<div class="box box-primary">
  <div class="box-body no-padding">
    <!-- THE CALENDAR -->
    <div id="calendar"></div>
  </div>
  <!-- /.box-body -->
</div>
<!-- /. box -->
<style>
.fc-disabled {
    background-color: #F0F0F0 !important;
    color: #000;
    cursor: default;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:10px;
}
</style>
<script language="javascript">
$(function () {
	$('#calendar').fullCalendar({
		//timeFormat: 'H(:mm)t',
		header: {
        	left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
		},
        buttonText: {
            today: 'today',
            month: 'month',
            week: 'week',
            day: 'day'
        },
		//hiddenDays: [ 2, 4 ],
        events: function(start, end, timezone, callback) {
			$.ajax({
				url	: '<?php echo WEB_ROOT; ?>api/process.php?cmd=calview',
				dataType: 'json',
				type	: 'POST',
				data	: {
					start	: start.format(),
					end		: end.format()
				},
				success: function(doc) {
					var events = [];
					callback(doc);
				}
			});
		},
        editable: true,
        droppable: true, // this allows things to be dropped onto the calendar !!!
        drop: function (date, allDay) { },
		eventClick: function(calEvent, jsEvent, view) {
		},
		dayRender: function(date, cell){
			 $(cell).css('opacity', 1);
		},
		viewRender: function(view, element) {},
		eventRender: function(ev, element, view) {
		},
		eventAfterRender : function(ev, element, view) {
			if(ev.block == true) {
				var start = ev.start.format();
				$("td.fc-day[data-date='"+ start +"']").addClass('fc-disabled');
			}
		}
	});
});//off
</script>