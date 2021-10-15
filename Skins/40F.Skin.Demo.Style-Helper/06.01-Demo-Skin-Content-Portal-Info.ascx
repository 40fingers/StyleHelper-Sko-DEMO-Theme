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

<%@ Register TagPrefix="ff" TagName="SH" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %> 

<ff:SH ID="sh" runat="server" />

            Home Page: <a href="<%=sh.Portal.Home.url%>"><%=sh.Portal.Home.Name%></a><br />
            Splash Page: <a href="<%=sh.Portal.Splash.url%>"><%=sh.Portal.Splash.Name%></a><br />
            Login Page: <a href="<%=sh.Portal.Login.url%>"><%=sh.Portal.Login.Name%></a><br />
            Register Page: <a href="<%=sh.Portal.Register.url%>"><%=sh.Portal.Register.Name%></a><br />
            Account Page: <a href="<%=sh.Portal.Account.url%>"><%=sh.Portal.Account.Name%></a><br />
            Search Page: <a href="<%=sh.Portal.Search.url%>"><%=sh.Portal.Search.Name%></a><br />
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


