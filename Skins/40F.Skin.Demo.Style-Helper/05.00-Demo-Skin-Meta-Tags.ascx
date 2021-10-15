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

	<fortyfingers:STYLEHELPER ID="STYLERHELPER1" AddMetaTags="Test1" runat="server" /> <!--Inject Nothing -->
	<fortyfingers:STYLEHELPER ID="STYLERHELPER2" AddMetaTags="Test2|Test2" runat="server" /> <!--Inject Nothing -->
	<fortyfingers:STYLEHELPER ID="STYLERHELPER3" AddMetaTags="Test3,Test3|Test3" runat="server" /> <!--Inject Nothing -->
	<fortyfingers:STYLEHELPER ID="STYLERHELPER4" AddMetaTags="Test4:Value|Test4" runat="server" />
	<fortyfingers:STYLEHELPER ID="STYLERHELPER5" AddMetaTags="Test5:Value5|Test6:Value6" runat="server" />
	<fortyfingers:STYLEHELPER ID="STYLERHELPER6" AddMetaTags="Test7:Value7|Test8:Value8|" runat="server" />
	<fortyfingers:STYLEHELPER ID="STYLERHELPER7" AddMetaTags="width=device-width, minimum-scale=1, maximum-scale=1:viewport" runat="server" />

    <h2>Add Meta Tags</h2>
    <p>Press F12 to check the page head</p>

	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


