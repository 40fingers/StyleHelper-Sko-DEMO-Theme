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
	
	<fortyfingers:STYLEHELPER ID="SH1" IfRole="" AddCssFile="[S]/Css/Grey.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH2" IfRole="Superusers" AddCssFile="[S]/Css/Blue.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH3" IfRole="!Administrators" Content="You are not an Administrator &lt;br&gt;" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH4" IfRole="!Superusers" Content="You are not a SuperUser &lt;br&gt;" runat="server" />
	
	<fortyfingers:STYLEHELPER ID="SH5" IfRole="!Superusers,!Administrators" Content="You are not an Administrator nor a SuperUser &lt;br&gt;" runat="server" />

	
	<!-- END -->
	
		<h3>Grey for unauthenticated users, Blue for Superusers</h3>
		
<!-- #include file="Base/Footer.ascx" -->


