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

	

	<fortyfingers:STYLEHELPER ID="sh1" AddCssFile="Css/Grey.css" IfRole="None" runat="server" />
	<fortyfingers:STYLEHELPER ID="sh2" AddCssFile="Css/Blue.css" IfRole="Administrators" runat="server" />
	<fortyfingers:STYLEHELPER ID="sh3" AddCssFile="Css/Orange.css" IfRole="Superusers" runat="server" />
	<fortyfingers:STYLEHELPER ID="sh4" AddCssFile="Css/Brown.css" IfUserName="guest" runat="server" />
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


