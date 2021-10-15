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

<h2>Load Javascript</h2>

	<fortyfingers:STYLEHELPER ID="sh0" AddJsFile="/js/test.js" runat="server" />
	<!--Add JS file from Skin Folder -->
	<fortyfingers:STYLEHELPER ID="sh1" AddJsFile="[S]/js/alert-from-skin.js" runat="server" />
	<!-- Add JS file from Portal Folder -->
	<fortyfingers:STYLEHELPER ID="sh2" AddJsFile="[P]js/alert-from-portal.js" runat="server" />
	
	<fortyfingers:STYLEHELPER runat="server" id="dnnSTYLEHELPERmain" addJSFile="/js/main.js" />
    <fortyfingers:STYLEHELPER runat="server" id="dnnSTYLEHELPERstd" addJSFile="/StandardMenu/StandardMenu.js" />

	
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


