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
	
	<fortyfingers:STYLEHELPER ID="SH1" Content="Inject Content at the Skin Objects Location, espcially useful with Filters<br>Try FF-IE-Chrome" runat="server" />
	<h4>
	<fortyfingers:STYLEHELPER ID="SH2" Content="You are using an outdated browser! (Internet Explorer)" IfBrowser="IE" AddCssFile="[S]/Css/Red.css" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH3" Content="You are using Firefox!" IfBrowser="Firefox" runat="server" />
	<fortyfingers:STYLEHELPER ID="SH4" Content="You are using Chrome!" IfBrowser="Chrome" runat="server" />
	</h4>
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


