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
	
	<fortyfingers:STYLEHELPER ID="STYLERHELPER2" AddToHead="<script types='text/javacript'>alert('Inject to Head Example using Style Helper, also injects some Meta Tags')</script>
    <meta property='og:title' content='[Page:Title]' />
    <meta property='og:name' content='[Page:Name]' />
    <meta property='og:description' content='[Page:Description]' />
    <meta property='og:url' content='[Page:RelativeUrl]' />
	 <meta property='og:url' content='[Page:Url]' />" runat="server" />

	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


