<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Base.ascx" -->

	<div class="SideMenu">
		<dnn:MENU MenuStyle="Menus/00.00-DDR-XSLT-UL-Classes" runat="server" NodeSelector="0,0,0"></dnn:MENU>
	</div>
		
	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->

	<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %> 
	

	
	<h4>Conditional Content using Style Helper based on Tokens:</h4>
	<h3>"IfToken" will be true if it returns anything but an empty String</h3>
	

	<h6><fortyfingers:STYLEHELPER ID="SH0" IfUserMode="View,Edit" Content="Persona Bar Visible" ContentFalse="PB Not Visible" runat="server" /></h6>


	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


