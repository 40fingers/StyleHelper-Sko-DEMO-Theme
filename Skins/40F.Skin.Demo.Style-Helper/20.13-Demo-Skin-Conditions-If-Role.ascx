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
	
	<fortyfingers:STYLEHELPER ID="SH1" IfRole="None" AddCssFile="[S]/Css/Grey.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH2" IfRole="Superusers" AddCssFile="[S]/Css/Blue.css" runat="server" />
	
	<fortyfingers:STYLEHELPER ID="SH3" IfRole="None" Content="Test 'none' > You are not a User in this Portal&lt;br&gt;" runat="server" />
	
	<fortyfingers:STYLEHELPER ID="SH4" IfRole="!Administrators" Content="Test: '!Administrators' > You are not an Administrator &lt;br&gt;" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH5" IfRole="!Superusers" Content="Test: '!Superusers' >  You are not a SuperUser &lt;br&gt;" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH6" IfRole="!Superusers,!Administrators" Content="Test: '!Superusers,!Administrators' >  You are not an Administrator nor a SuperUser &lt;br&gt;" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH8" IfRole="Super" Content="Test 'Super' > You are in a role containing 'Super' &lt;br&gt;" runat="server" />

	
	<!-- END -->
	
		<h3>Grey for unauthenticated users, Blue for Superusers</h3>
		
<!-- #include file="Base/Footer.ascx" -->


