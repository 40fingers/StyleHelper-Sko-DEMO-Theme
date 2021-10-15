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
	
	<fortyfingers:STYLEHELPER ID="STYLERHELPER2" 
		RedirectName="Custom"
		IfMobile="true" 
		RedirectTo="/stylehelper-sko/redirects/redirect-mobile/mobile-landing" 
		RedirectMode="always" 
		RedirectedInfo="Cookie,QS" 
		DetectMobileRegex1="Mobile|iP(hone|od|ad)|Android|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune"
		DetectMobileRegex2=""
	runat="server" />
	
	<!-- END -->
	
	<h3>If you visit this page using a mobile Browser you will be redirected to a subpage</h3>
<h4>Using</h4>
<p>DetectMobileRegex1="Mobile|iP(hone|od|ad)|Android|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune"</p>
		<p>Source: https://gist.github.com/dalethedeveloper/1503252/</p>
<!-- #include file="Base/Footer.ascx" -->


