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
	
	
	<fortyfingers:STYLEHELPER ID="SH1" IfDnnVersion="7.3" AddCssFile="[S]/Css/Orange.css" Content="<h3>This is DNN7</h3>" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH2" IfDnnVersion=">=7.4" AddCssFile="[S]/Css/Blue.css" Content="<h3>This is DNN7.4 +</h3>" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH3" IfDnnVersion=">9.0" AddCssFile="[S]/Css/Blue.css" Content="<h3>This is DNN9.0 +</h3>" runat="server" />

	

	
	<!-- END -->
	
	<h3>Condional loading of Stylesheet based on DNN Version</h3>
	Orange: DNN 7.3<br>
	Blue: DNN >= 7.4<br>
	Black: DNN > 9.0<br>
		
<!-- #include file="Base/Footer.ascx" -->


