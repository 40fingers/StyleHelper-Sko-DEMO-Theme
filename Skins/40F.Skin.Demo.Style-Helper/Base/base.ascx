<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>


<dnn:DnnCssInclude runat="server" FilePath="Base/Skin.css" Priority="35" PathNameAlias="SkinPath" />

<dnn:jQuery runat="server"></dnn:jQuery>


<dnn:Meta runat="server" Name="viewport" Content="width=device-width, initial-scale=1" />


<script runat="server">
' Seting the Doctype to HTML5. 
' This is not the regular way to do this, but I want as less extra files in this skinpack as possible.
' You can also do this and more using our StyleHelper, downloadable from our website.

	Private Sub Page_PreRender(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.PreRender
		 Dim liDoctype As Literal = CType(Me.Page.FindControl("skinDocType"), Literal)
		 liDoctype.Text = "<!DOCTYPE HTML>"
	End Sub



	Private Function SQP() as String

		Return server.HtmlEncode(GetSkinFolderName)
		
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

<link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">

<!-- #include file="../_custom/_skin-variables.ascx" -->

<main class="wrap-main menu-open <%=IsLocalSite%>" id="skin">
	<aside class="side-wrapper">
		<div class="menu-header">
			<a class="main-logo" href="https://<%=PortalSettings.PortalAlias.HttpAlias%>">
				<img src="<%=SkinPath%>/Base/Img/FFLogoWhite.png" />
			</a>
			<a class="togglemenu icon40" id="togglemenu" onclick="toggleMenu()" title="Toggle Sidebar">
				<i class="material-icons">menu</i>
			</a>
			<div class="lang-wrap float-right clear-after">
				<dnn:LANGUAGE runat="server" id="dnnLANGUAGE" showMenu="False" showLinks="True" />
			</div>
		</div>
		
		<!-- Side Menu -->
		<dnn:MENU MenuStyle="Base/MenuDefinition" runat="server" ExcludeNodes="Admin,Host"></dnn:MENU>
		
		
		
		<div class="bottom-links">
		<a href="<%=sCompanyUrl%>" target="_blank"><i class="material-icons">public</i><span>40FINGERS</span></a>
		
		<%If Request.IsAuthenticated%>
		<a class="icon40" href="/logoff"><i class="material-icons">lock_open</i></a>
		<%Else%>
		<a class="icon40" href="/login"><i class="material-icons">lock</i></a>
		<%End If%>
		</div>
	</aside>
	<div class="content-main">
	<header class="header-main">
		<div class="header-main-title">
			<h1 class="title-main"><a href="http://www.40fingers.net/products" target="_Blank">40FINGERS Demo Skin</a></h1>
			<h2 class="description-main">Page skin: <%=SkinName%></h2>
		</div>
		<div class="header-main-icons">
			<a class="icon-link" href="<%=sDownloadUrl%>" target="_blank"><i class="material-icons">file_download</i><span>Download</span></a>
			<a class="icon-link" href="<%=sRepoUrl%>" target="_blank"><i class="material-icons">code</i><span>Project Repo</span></a>
		</div>
	</header>

	<!-- section closed in Footer -->
	<section class="main pad-h3 pad-v3">
		<div class="content-pane" id="ContentPane" runat="server" />
