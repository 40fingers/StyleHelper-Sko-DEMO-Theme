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

<h1>Add DNN Content Path [TOKENS]</h1>


<h2>Inject in place</h2>
<fortyfingers:STYLEHELPER ID="STYLERHELPER2" Content="
Module Path: [M]<br>
Skin Path: [S]<br>
Portal Path: [P]<br>
Root Path: [R]<br>
DesktopModule Path: [D]<br>

" runat="server" />


	
	<!-- END -->

		
<!-- #include file="Base/Footer.ascx" -->


