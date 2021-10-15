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
	
<script runat="server">
	Function Random() As String
	
		Dim RandGen As New Random
		
		Return  RandGen.Next(0, 2).ToString
	
	End Function
</script>
	
	<h4>Conditional Content using Style Helper based a value passed from the skin:</h4>
	

	<h6><fortyfingers:STYLEHELPER ID="SH0" IfExternal="<%#True%>" Content="External Value = True" runat="server" /></h6>
	<h6><fortyfingers:STYLEHELPER ID="SH1" IfExternal="<%#Random()%>" Content="Randomly True" runat="server" ContentFalse="Randomly False" /></h6>
	


	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


