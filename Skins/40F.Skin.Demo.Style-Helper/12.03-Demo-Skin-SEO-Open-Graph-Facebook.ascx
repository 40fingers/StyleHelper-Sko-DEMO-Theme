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

<fortyfingers:STYLEHELPER ID="sh1" 
	AddAtEnd="False" 
	AddToHead="<meta property='og:title' content='[Page:Title]' />
	<meta property='og:type' content='website' />
	<meta property='og:url' content='[Page:Url]' />
	<meta property='og:image' content='[Page:IconFileLarge]' />"
 runat="server" />

<h2>Adds Open Graph Meta Tags, based on current Page Data</h2>
<p>Try <a href="https://www.facebook.com/sharer/sharer.php?u=#<%=PortalSettings.ActiveTab.FullUrl%>" target="_blank">Sharing this page to Facebook</a>, it uses the page Title and Large Icon File for sharing.</p>



	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


