<%@ Page Title="Coil Spec" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_CoilSpec.aspx.cs" Inherits="_2017_Thyssenkrupp_Cotizador_ADMIN.Admin.Admin_CoilSpec" %>

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
					<li><a href="/Admin/Admin_BlanksInformation.aspx">Blanks Information</a></li>
					<li><a href="/Admin/Admin_ShapeOfBlank.aspx">Shape of Blank</a></li>
					<li><a href="/Admin/Admin_WeightCoilCalculation.aspx">Weight Coil Calculation</a></li>
					<li><a href="/Admin/Admin_MaterialType.aspx">Material Type</a></li>
					<li class="active"><a href="/Admin/Admin_CoilSpec.aspx">Coil Specs</a></li>
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
		  <h1><strong>Coil Specification</strong></h1>	
		</div>
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->

		<div class="row">
			<h2>Material Type</h2>
			<!-- WebPageContent -------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGrid_MaterialType" runat="server"  AllowAutomaticUpdates="True"
					AllowFilteringByColumn="True" AutoGenerateColumns="False"  
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceMaterialType">
					<ClientSettings>
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="materialType_id"   DataSourceID="SqlDataSourceMaterialType">
					   
						<Columns>
							<telerik:GridBoundColumn DataField="materialType_id" DataType="System.Int32" FilterControlAltText="Filter materialType_id column" HeaderText="Material Type ID" ReadOnly="True" SortExpression="materialType_id" UniqueName="materialType_id">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="materialType_nombre" FilterControlAltText="Filter materialType_nombre column" HeaderText="Material Type Name" SortExpression="materialType_nombre" UniqueName="materialType_nombre">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="materialType_density" DataType="System.Decimal" FilterControlAltText="Filter materialType_density column" HeaderText="Material Type Density" SortExpression="materialType_density" UniqueName="materialType_density">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="materialType_headAndTails" DataType="System.Decimal" FilterControlAltText="Filter materialType_headAndTails column" HeaderText="Material Type Heand &amp; Tails" SortExpression="materialType_headAndTails" UniqueName="materialType_headAndTails">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="materialType_descripcion" FilterControlAltText="Filter materialType_descripcion column" HeaderText="Material Type Description" SortExpression="materialType_descripcion" UniqueName="materialType_descripcion">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceMaterialType" runat="server" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" SelectCommand="SELECT * FROM [MaterialType] ORDER BY [materialType_nombre]"></asp:SqlDataSource>
			</div>
			<p>&nbsp;</p>
			<h2>Coil Specification</h2>
			<!-- GridView for CoilSpec ------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGrid_CoilSpec" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowSorting="True"
					AllowFilteringByColumn="True" AutoGenerateColumns="False" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" 
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceCoilSpec">
					<ClientSettings>
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="coilSpec_id"  CommandItemDisplay="Top" DataSourceID="SqlDataSourceCoilSpec">
					   
						<Columns>
							<telerik:GridBoundColumn DataField="coilSpec_id" DataType="System.Int32" FilterControlAltText="Filter coilSpec_id column" HeaderText="coilSpec_id" ReadOnly="True" SortExpression="coilSpec_id" UniqueName="coilSpec_id" Visible="False">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="materialType_id" DataType="System.Int32" FilterControlAltText="Filter materialType_id column" HeaderText="Material Type ID (Info from previous table)" SortExpression="materialType_id" UniqueName="materialType_id">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="coilSpec_nombre" FilterControlAltText="Filter coilSpec_nombre column" HeaderText="Name" SortExpression="coilSpec_nombre" UniqueName="coilSpec_nombre">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="coilSpec_weightMin" DataType="System.Decimal" FilterControlAltText="Filter coilSpec_weightMin column" HeaderText="Weight Min" SortExpression="coilSpec_weightMin" UniqueName="coilSpec_weightMin">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="coilSpec_unidadMin" FilterControlAltText="Filter coilSpec_unidadMin column" HeaderText="Unit Min" SortExpression="coilSpec_unidadMin" UniqueName="coilSpec_unidadMin">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="coilSpec_weightMax" DataType="System.Decimal" FilterControlAltText="Filter coilSpec_weightMax column" HeaderText="Weight Max" SortExpression="coilSpec_weightMax" UniqueName="coilSpec_weightMax">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="coilSpec_unidadMax" FilterControlAltText="Filter coilSpec_unidadMax column" HeaderText="Unit Max" SortExpression="coilSpec_unidadMax" UniqueName="coilSpec_unidadMax">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="coilSpec_descripcion" FilterControlAltText="Filter coilSpec_descripcion column" HeaderText="Description" SortExpression="coilSpec_descripcion" UniqueName="coilSpec_descripcion">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceCoilSpec" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" DeleteCommand="DELETE FROM [CoilSpec] WHERE [coilSpec_id] = @original_coilSpec_id AND (([materialType_id] = @original_materialType_id) OR ([materialType_id] IS NULL AND @original_materialType_id IS NULL)) AND (([coilSpec_nombre] = @original_coilSpec_nombre) OR ([coilSpec_nombre] IS NULL AND @original_coilSpec_nombre IS NULL)) AND (([coilSpec_weightMin] = @original_coilSpec_weightMin) OR ([coilSpec_weightMin] IS NULL AND @original_coilSpec_weightMin IS NULL)) AND (([coilSpec_unidadMin] = @original_coilSpec_unidadMin) OR ([coilSpec_unidadMin] IS NULL AND @original_coilSpec_unidadMin IS NULL)) AND (([coilSpec_weightMax] = @original_coilSpec_weightMax) OR ([coilSpec_weightMax] IS NULL AND @original_coilSpec_weightMax IS NULL)) AND (([coilSpec_unidadMax] = @original_coilSpec_unidadMax) OR ([coilSpec_unidadMax] IS NULL AND @original_coilSpec_unidadMax IS NULL)) AND (([coilSpec_descripcion] = @original_coilSpec_descripcion) OR ([coilSpec_descripcion] IS NULL AND @original_coilSpec_descripcion IS NULL))" InsertCommand="INSERT INTO [CoilSpec] ([materialType_id], [coilSpec_nombre], [coilSpec_weightMin], [coilSpec_unidadMin], [coilSpec_weightMax], [coilSpec_unidadMax], [coilSpec_descripcion]) VALUES (@materialType_id, @coilSpec_nombre, @coilSpec_weightMin, @coilSpec_unidadMin, @coilSpec_weightMax, @coilSpec_unidadMax, @coilSpec_descripcion)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CoilSpec] ORDER BY [coilSpec_nombre]" UpdateCommand="UPDATE [CoilSpec] SET [materialType_id] = @materialType_id, [coilSpec_nombre] = @coilSpec_nombre, [coilSpec_weightMin] = @coilSpec_weightMin, [coilSpec_unidadMin] = @coilSpec_unidadMin, [coilSpec_weightMax] = @coilSpec_weightMax, [coilSpec_unidadMax] = @coilSpec_unidadMax, [coilSpec_descripcion] = @coilSpec_descripcion WHERE [coilSpec_id] = @original_coilSpec_id AND (([materialType_id] = @original_materialType_id) OR ([materialType_id] IS NULL AND @original_materialType_id IS NULL)) AND (([coilSpec_nombre] = @original_coilSpec_nombre) OR ([coilSpec_nombre] IS NULL AND @original_coilSpec_nombre IS NULL)) AND (([coilSpec_weightMin] = @original_coilSpec_weightMin) OR ([coilSpec_weightMin] IS NULL AND @original_coilSpec_weightMin IS NULL)) AND (([coilSpec_unidadMin] = @original_coilSpec_unidadMin) OR ([coilSpec_unidadMin] IS NULL AND @original_coilSpec_unidadMin IS NULL)) AND (([coilSpec_weightMax] = @original_coilSpec_weightMax) OR ([coilSpec_weightMax] IS NULL AND @original_coilSpec_weightMax IS NULL)) AND (([coilSpec_unidadMax] = @original_coilSpec_unidadMax) OR ([coilSpec_unidadMax] IS NULL AND @original_coilSpec_unidadMax IS NULL)) AND (([coilSpec_descripcion] = @original_coilSpec_descripcion) OR ([coilSpec_descripcion] IS NULL AND @original_coilSpec_descripcion IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_coilSpec_id" Type="Int32" />
						<asp:Parameter Name="original_materialType_id" Type="Int32" />
						<asp:Parameter Name="original_coilSpec_nombre" Type="String" />
						<asp:Parameter Name="original_coilSpec_weightMin" Type="Decimal" />
						<asp:Parameter Name="original_coilSpec_unidadMin" Type="String" />
						<asp:Parameter Name="original_coilSpec_weightMax" Type="Decimal" />
						<asp:Parameter Name="original_coilSpec_unidadMax" Type="String" />
						<asp:Parameter Name="original_coilSpec_descripcion" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="materialType_id" Type="Int32" />
						<asp:Parameter Name="coilSpec_nombre" Type="String" />
						<asp:Parameter Name="coilSpec_weightMin" Type="Decimal" />
						<asp:Parameter Name="coilSpec_unidadMin" Type="String" />
						<asp:Parameter Name="coilSpec_weightMax" Type="Decimal" />
						<asp:Parameter Name="coilSpec_unidadMax" Type="String" />
						<asp:Parameter Name="coilSpec_descripcion" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="materialType_id" Type="Int32" />
						<asp:Parameter Name="coilSpec_nombre" Type="String" />
						<asp:Parameter Name="coilSpec_weightMin" Type="Decimal" />
						<asp:Parameter Name="coilSpec_unidadMin" Type="String" />
						<asp:Parameter Name="coilSpec_weightMax" Type="Decimal" />
						<asp:Parameter Name="coilSpec_unidadMax" Type="String" />
						<asp:Parameter Name="coilSpec_descripcion" Type="String" />
						<asp:Parameter Name="original_coilSpec_id" Type="Int32" />
						<asp:Parameter Name="original_materialType_id" Type="Int32" />
						<asp:Parameter Name="original_coilSpec_nombre" Type="String" />
						<asp:Parameter Name="original_coilSpec_weightMin" Type="Decimal" />
						<asp:Parameter Name="original_coilSpec_unidadMin" Type="String" />
						<asp:Parameter Name="original_coilSpec_weightMax" Type="Decimal" />
						<asp:Parameter Name="original_coilSpec_unidadMax" Type="String" />
						<asp:Parameter Name="original_coilSpec_descripcion" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
</div>

			<!-- End GridView for CoilSpec ---------------------------------------------------------------------------------------------------->
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

