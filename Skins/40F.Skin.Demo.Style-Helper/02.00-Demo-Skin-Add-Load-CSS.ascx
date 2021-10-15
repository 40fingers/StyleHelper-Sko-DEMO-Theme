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

	<!--Add CSS file -->
	<fortyfingers:STYLEHELPER ID="sh1" AddCssFile="Css/Black.css" runat="server" />
	<!--Add CSS file based on PortalId -->
	<fortyfingers:STYLEHELPER ID="sh2" AddCssFile="Css/Style-[PortalId].css" runat="server" />
	<!--Add CSS file based on QueryString Parameter -->
	<fortyfingers:STYLEHELPER ID="sh3" AddCssFile="Css/[QS:style].css" runat="server" />
	
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


