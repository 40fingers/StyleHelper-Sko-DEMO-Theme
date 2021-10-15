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
<h1>Add DNN Content containing [TOKENS]</h1>

<h2>Inject in Page Head</h2>
<fortyfingers:STYLEHELPER ID="STYLERHELPER1" AddToHead="
<script>alert('Default Portal Alias: [Portal:Settings.DefaultPortalAlias]')</script>
" runat="server" />

<h2>Inject in place</h2>
<fortyfingers:STYLEHELPER ID="STYLERHELPER2" Content="
Default Portal Skin: [Portal:Settings.DefaultPortalSkin]<br>
Default Portal Container: [Portal:Settings.DefaultPortalContainer]" runat="server" />

<h2>Add to Top of BODY element</h2>
<fortyfingers:STYLEHELPER ID="STYLERHELPER3" AddToBodyTop ="
Portal TimeZone: '[Portal:Settings.TimeZone]'" runat="server" />

<h2>Add to Bottom of BODY element</h2>
<fortyfingers:STYLEHELPER ID="STYLERHELPER4" AddToBodyBottom ="
Portal TimeZone: '[Portal:Settings.TimeZone]'" runat="server" />
	
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


