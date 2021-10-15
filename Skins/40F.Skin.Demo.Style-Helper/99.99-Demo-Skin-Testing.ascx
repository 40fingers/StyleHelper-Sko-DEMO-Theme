<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>

<script runat="server">

	 Private Function HasLargeIcon() as String
	 
	 If PortalSettings.ActiveTab.IconFileLarge > "" Then
		Return ""
	 Else
		Return "0"
	 End If
	 
	 End Function
 
 </script>

<!-- #include file="Base/Header.ascx" -->

	<div class="SideMenu">
		<dnn:MENU MenuStyle="Menus/00.00-DDR-XSLT-UL-Classes" runat="server" NodeSelector="0,0,0"></dnn:MENU>
	</div>
		
	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->

	<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %> 
	
	<fortyfingers:STYLEHELPER ID="SH1" AddHtmlAttribute="ng-jq,true" runat="server" />
	
	<fortyfingers:STYLEHELPER ID="SH2" AddHtmlAttribute="ng-jq,x" runat="server" />
	
	<h4>Show TabId</h4>
	<fortyfingers:STYLEHELPER ID="sh3" AddBodyClass="True"  runat="server" />

Which will add a lot of context classes to the page or:

<fortyfingers:STYLEHELPER ID="sh4" BodyClass="id-[Page:Id] "  runat="server" />

Which will only add a class for the TabId (to the current Page)

Or:
<p>
<fortyfingers:STYLEHELPER ID="sh5" IfRole="Administrators" Content="This Page TabId = [Page:Id] "  runat="server" />
</p>
	
	
<fortyfingers:STYLEHELPER ID="STYLEHELPER1" AddToHead='<meta http-equiv="x-ua-compatible" content="ie=edge" />' IfBrowser="IE" AddAtEnd="False" runat="server" /> 

<fortyfingers:STYLEHELPER ID="STYLEHELPER6" AddCssFile="assets/css/ie.css" CssMedia="all" IfBrowser="IE,Edge" runat="server" />


------------------------------<br>

	<fortyfingers:STYLEHELPER 
	ID="FFSHopengraph1" 
	IfDnnVersion="<%#HasLargeIcon%>"
	AddToHead="<meta property='og:image' content='//[Portal:Alias][Page:IconFileLarge]' >" runat="server" />  

		
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


