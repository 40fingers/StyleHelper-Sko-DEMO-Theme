	 <h4>CSS class read from &lt;body&gt; using JS: </h4>
	 <div id="ShowClassBody">
	 </div>
	 <script>
		var bc = $('body').attr('class');
		var bcs = bc.replace(/ /g, '<br>')
		$('#ShowClassBody').html(bcs);
	 </script>