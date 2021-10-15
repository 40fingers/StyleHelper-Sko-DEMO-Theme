<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" src="~/Admin/Skins/jQuery.ascx" %>

<dnn:jQuery runat="server"></dnn:jQuery>

<script runat="server">
' Seting the Doctype to HTML5. 
' This is not the regular way to do this, but I want as less extra files in this skinpack as possible.
' You can also do this and more using our StyleHelper, downloadable from codeplex.

	Private Sub Page_PreRender(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.PreRender
		 Dim liDoctype As Literal = CType(Me.Page.FindControl("skinDocType"), Literal)
		 liDoctype.Text = "<!DOCTYPE HTML>"
	End Sub



	Private Function SQP() as String

		Return server.HTmlEncode(GetSkinFolderName)
		
	End Function

	
	Private Function GetSkinFolderName () as String

		Dim sOut as string = SkinPath
		Dim sSplit() as string = sOut.split("/")
		sOut = sSplit(sSplit.length-2)
		
		Return sOut

	End Function
	
		Private Function GetSkinName () as String
		
			Return System.IO.Path.GetFileName (PortalSettings.ActiveTab.SkinSrc)
			
		End Function

	Private Function SkinName() as String

		Return String.Format("{0} // {1}", GetSkinFolderName.Replace(".", " "), GetSkinName())
	
	End Function
	
	Private Function IsLocalSite() as String
		'Add class for Local Sites
		If HttpContext.Current.Request.ServerVariables("REMOTE_ADDR") = "127.0.0.1" Then
			Return ("LocalSite")
		Else
			Return ("LiveSite")
		End If
		
	End Function
	




</script>
<div class="sWrap <%=IsLocalSite%>" id="Skin">
	<div class="Demo">
	<header>
	<h1><a href="http://<%=PortalSettings.PortalAlias.HttpAlias%>"><img src="<%=SkinPath%>/Base/Img/FFLogoWhite.png" /><div>40FINGERS Demo Skin</div></a></h1>
	</header>
	<dnn:MENU MenuStyle="Base/MenuDefinition" runat="server" ExcludeNodes="Admin,Host"></dnn:MENU>
	<footer>
	<a href="http://www.40fingers.net" target="_Blank">40FINGERS</a> &middot; <dnn:LOGIN cssclass="Login" runat="server" /> 
	</footer>
	</div>
	<div class="sContent">
	<header class="ClearAfter">
		<div class="ColLeft">
			<h2 class="ContentTitle"><a href="http://www.40fingers.net/?Source=BaseSkin" target="_Blank">40FINGERS</a> DNN Demo Skin</h2>
			<h3 class="ContentDescription">Page skin: <%=SkinName%></h3>
		</div>
		<div class="ColRight"">
			<div class="ContentLink">Download: <a href="https://demoskins.codeplex.com/releases" target="_blank">https://demoskins.codeplex.com/releases</a></div>
		</div>
	</header>
	<section>
		<div class="ContentPane Pane" id="ContentPane" runat="server"></div>