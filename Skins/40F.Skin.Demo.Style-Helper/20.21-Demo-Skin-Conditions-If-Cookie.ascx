<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<div class="SideMenu">
		<dnn:MENU MenuStyle="Menus/00.00-DDR-XSLT-UL-Classes" runat="server" NodeSelector="0,0,0"></dnn:MENU>
	</div>
		
	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->

	<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %> 
	

	
	<h4>Conditional Content using Style Helper based on Cookie:</h4>
	<h3>"IfNoCookie" will be true if the Cookie does not exist</h3>
	
	<p>
	<a href="#" onclick="setCookie('MyText', '0', 30)">Set Cookie 'MyText' to 0 &raquo;</a><br />
	<a href="#" onclick="setCookie('MyText', '1', 30)">Set Cookie 'MyText' to 1 &raquo;</a><br />
	<a href="#" onclick="setCookie('MyText', '2', 30)">Set Cookie 'MyText' to 2 &raquo;</a><br />
	<a href="#" onclick="removeCookie('MyText')">Remove Cookie 'MyText'&raquo;</a><br />
	</p>
	
	<fortyfingers:STYLEHELPER ID="SH0" IfNoCookie="MyText" Content="Cookie 'MyText' does not Exist<br />" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH1" IfCookie="MyText" Content="Cookie 'MyText' Exists<br />" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH2" IfCookie="MyText:1" Content="Cookie 'MyText' value : 1<br />" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH3" IfCookie="MyText:2" Content="Cookie 'MyText' value : 2<br />" runat="server" />
	
	<h4>Content based on the DNN dnn_IsMobile Cookie:</h4>
	<fortyfingers:STYLEHELPER ID="SH4" IfCookie="dnn_IsMobile:True" Content="Your Browser detected by DNN as Mobile" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH5" IfCookie="dnn_IsMobile:False" Content="Your Browser detected by DNN as Desktop" runat="server" />
	

	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->

	<script>

	
		function setCookie(cname, cvalue, exdays) {
		  var d = new Date();
		  d.setTime(d.getTime() + (exdays*24*60*60*1000));
		  var expires = "expires="+ d.toUTCString();
		  document.cookie = cname + "=" + cvalue + ";" + expires;
		  
		  location.reload(); 
		  
		}
		
		function removeCookie(cname){
			setCookie(cname, '', 0);
		}
		
	</script>


