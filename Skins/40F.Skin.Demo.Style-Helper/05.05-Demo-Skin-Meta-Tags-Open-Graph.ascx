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

<fortyfingers:STYLEHELPER ID="sh2" 
	AddAtEnd="False" 
	
	AddToHead="<link rel='canonical' href='[Page:Url]' />
	<meta property='og:title' content='[Page:Title]' />
	<meta property='og:type' content='website' />
	<meta property='og:description' content='[Page:Description]' />
	<meta property='og:image' content='[Portal:Logo.Path]' />
	<meta property='og:url' content='[Page:Url]' />"
 runat="server" />
 

    <h2>Add Open Graph Meta Tags</h2>
    <p>Press F12 to check the page head</p>

	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


