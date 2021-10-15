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
	
	<fortyfingers:STYLEHELPER ID="SH1" IfQS="color:orange" AddCssFile="[S]/Css/Orange.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH2" IfQS="color:blue" AddCssFile="[S]/Css/Blue.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH3" IfQS="color:black" AddCssFile="[S]/Css/Black.css" runat="server" />
	
	<!-- END -->
	
	<h3>Condional loading of Stylesheet based on QS parameter</h3>
	<a href="?color=orange">Orange</a><br>
	<a href="?color=blue">Blue</a><br>
	<a href="?color=black">Black</a><br>
		
<!-- #include file="Base/Footer.ascx" -->


