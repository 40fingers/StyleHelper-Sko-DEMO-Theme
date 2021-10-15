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

<fortyfingers:STYLEHELPER ID="sh1" ChangeMeta='id=MetaDescription|content=Buy your [QS:Product] now!||id=MetaKeywords|content=*' runat="server" />

    <h2>Changes the MetaDescription Meta Tag based on a Querystring Parameter</h2>
    <p>Press F12 to check the page head</p>
    <p>See what happens if you click <a href="?">Nothing</a>, <a href="?Product=Bike">Bike</a>, <a href="?Product=Car">Car</a></p>

	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


