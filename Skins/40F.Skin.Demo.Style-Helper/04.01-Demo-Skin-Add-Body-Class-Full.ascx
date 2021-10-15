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

<fortyfingers:STYLEHELPER ID="STYLERHELPER2" AddBodyClass="True" 
BodyClass="
Portal-[Portal:Id]
 Alias-[Portal:Alias]
 
 ID-[Page:Id]
 Page-[Page:Name]
 Level-[Page:Level]
 Title-[Page:Title]
 Desc-[Page:Description]
 
 Url-[Page:Url]
 Url-[Page:RelativeUrl]
 
 Skin-[Page:Skin]
 Container-[Page:Container]
 
 [Culture]
 [Language]
 
 CP-[CPState]
 [PageType]
 [IE]
 [UserPageRoles]
 
 [BcName]
 
 [BcId]
 
 [BcNr]
 
 [BcLevel]
 
 [Date]
 
 [DnnVersion]

 " runat="server" />
 
	<!-- END -->
	
	<!-- #include file="Includes/ShowBodyClass.ascx" -->
	
		
<!-- #include file="Base/Footer.ascx" -->


