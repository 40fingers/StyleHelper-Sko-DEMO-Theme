	 <h4>CSS class read from &lt;html&gt; using JS: </h4>
	 <div id="ShowClassHtml">
	 </div>
	 <script>
		var bc = $('html').attr('class');
		var bcs = bc.replace(/ /g, '<br>')
		$('#ShowClassHtml').html(bcs);
	 </script>