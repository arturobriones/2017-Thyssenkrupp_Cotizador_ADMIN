<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_BlanksInformation.aspx.cs" Inherits="_2017_Thyssenkrupp_Cotizador_ADMIN.Admin.Admin_BlanksInformation" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


	<telerik:RadSkinManager ID="RadSkinManagerAdmin" runat="server" ShowChooser="False" Skin="MetroTouch"></telerik:RadSkinManager>

	<telerik:RadAjaxManager runat="server" ID="RadAjaxManagerAdmin" DefaultLoadingPanelID="RadAjaxManagerAdmin">
		<AjaxSettings>
			<telerik:AjaxSetting AjaxControlID="OrientationButtonList">
				<UpdatedControls>
					<telerik:AjaxUpdatedControl ControlID="RadMenuAdmin" />
					<telerik:AjaxUpdatedControl ControlID="OrientationButtonList" />
				</UpdatedControls>
			</telerik:AjaxSetting>
		</AjaxSettings>
	</telerik:RadAjaxManager>
	<telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanelAdmin"></telerik:RadAjaxLoadingPanel>

	<!--<div align="left">
		&nbsp;
		<telerik:RadMenu runat="server" RenderMode="Lightweight" ID="RadMenuAdmin" EnableRoundedCorners="True" EnableShadows="True" Flow="Vertical" Skin="Metro">
			<Items>
				<telerik:RadMenuItem runat="server" Text="Usuarios">
				</telerik:RadMenuItem>
				<telerik:RadMenuItem runat="server" Text="Clientes">
				</telerik:RadMenuItem>
			</Items>
		</telerik:RadMenu>
	</div> -->

	<p></p>


	<div class="navbar navbar-inverse navbar-fixed-left bg-primary">
		<a class="navbar-brand" href="#">Menu</a>
		<ul class="nav navbar-nav">
			<li><a href="/Admin/AdminHome.aspx">Users</a></li>
			<li><a href="/Admin/AdminClients.aspx">Clients</a></li>
			<li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Engineering <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<!--Ingenieria-->
					<!--Ingenieria-->
					<li><a href="/Admin/Admin_ProductLine.aspx">Product Line</a></li>
					<li class="active"><a href="/Admin/Admin_BlanksInformation.aspx">Blanks Information</a></li>
					<li><a href="/Admin/Admin_ShapeOfBlank.aspx">Shape of Blank</a></li>
					<li><a href="/Admin/Admin_WeightCoilCalculation.aspx">Weight Coil Calculation</a></li>
					<li><a href="/Admin/Admin_MaterialType.aspx">Material Type</a></li>
					<li><a href="/Admin/Admin_CoilSpec.aspx">Coil Specs</a></li>
					<li><a href="/Admin/Admin_RawMaterialSource.aspx">Raw Material Source</a></li>
					<li><a href="/Admin/Admin_Incoterm.aspx">Incoterm</a></li>
					<li class="divider"></li>
					<li><a href="/Admin/Admin_CutTolerance.aspx">Cut Tolerance</a></li>
					<li><a href="/Admin/Admin_DimensionTolerance.aspx">Dimension Tolerance</a></li>
					<li><a href="/Admin/Admin_WidthTolerance.aspx">Width Tolerance</a></li>
					<li><a href="/Admin/Admin_ConversionFactors.aspx">Conversion Factors</a></li>
					<li><a href="/Admin/Admin_Units.aspx">Units</a></li>
					<li class="divider"></li>
					<li><a href="/Admin/Admin_IHS.aspx">IHS</a></li>
					<li><a href="/Admin/Admin_Process.aspx">Process</a></li>
					<li class="divider"></li>
					<li><a href="/Admin/Admin_StatusQuote.aspx">Status Quote</a></li>
				</ul>
			</li>
			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Logistics <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<!--Logistica-->
					<li><a href="/Admin/Admin_ShipTo.aspx">Ship To</a></li>
					<li><a href="/Admin/Admin_Packaging.aspx">Packaging</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<div class="container" id="page-content-wrapper">
		
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->
		<div class="alert alert-dismissible alert-info">
		  <h1><strong>Blanks Information</strong></h1>	
		</div>
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->

		<div class="row">
			<h2>Blanks Information</h2>
			<!-- WebPageContent -------------------------------------------------------------------------------------------------------->
			<div>
			</div>
			<p>&nbsp;</p>
			<h2></h2>
			<!-- GridView for Users ------------------------------------------------------------------------------------------------------->

			<!-- End GridView for Users ---------------------------------------------------------------------------------------------------->
			<!-- End WebPageContent ---------------------------------------------------------------------------------------------------->
			<p></p>
		</div>
		<div>
			<p>&copy; Copyright <%: DateTime.Now.Year %> - Thyssenkrupp Mexico</p>
		</div>
	</div>


	<footer>
	</footer>


</asp:Content>
