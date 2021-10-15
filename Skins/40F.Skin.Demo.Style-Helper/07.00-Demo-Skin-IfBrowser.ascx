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
	
	<fortyfingers:STYLEHELPER ID="SH1" IfBrowser="Firefox" AddCssFile="[S]css/browsers/firefox.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH2" IfBrowser="Chrome" AddCssFile="[S]css/browsers/chrome.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH3" IfBrowser="IE" AddCssFile="[S]css/browsers/ie.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH4" IfBrowser="Edge" AddCssFile="[S]css/browsers/edge.css" runat="server" />
	
	<fortyfingers:STYLEHELPER ID="SH5" IfBrowser="IE<=11" Content="IE 11 and lower &lt;br&gt;" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH6" IfBrowser="!IE=<11" Content="anything but IE 11 and lower &lt;br&gt;" runat="server" />
	
	<fortyfingers:STYLEHELPER ID="SH7" IfBrowser="!Firefox" Content="Not Firefox &lt;br&gt;" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH8" IfBrowser="Firefox>50" Content="FF > version 50 &lt;br&gt;" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH9" IfBrowser="Firefox<=62" Content="FF 62 &lt;br&gt;" runat="server" />
	
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


