<%@ Page Title="Cut Tolerance" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_CutTolerance.aspx.cs" Inherits="_2017_Thyssenkrupp_Cotizador_ADMIN.Admin.Admin_CutTolerance" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >


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
					<li><a href="/Admin/Admin_WeightCoilCalculation.aspx">Weight Coil Calculation</a></li>
					<li><a href="/Admin/Admin_MaterialType.aspx">Material Type</a></li>
					<li><a href="/Admin/Admin_CoilSpec.aspx">Coil Specs</a></li>
					<li><a href="/Admin/Admin_RawMaterialSource.aspx">Raw Material Source</a></li>
					<li><a href="/Admin/Admin_Incoterm.aspx">Incoterm</a></li>
					<li class="divider"></li>
					<li class="active"><a href="/Admin/Admin_CutTolerance.aspx">Cut Tolerance</a></li>
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
	<!-- Props para hacer aparecer el scroll ****************************************************************************************************-->
	<div class="container" id="page-content-wrapper" style="position: fixed; overflow: scroll; height:100%">
	
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->
		<div class="alert alert-dismissible alert-info">
		  <h1><strong>Cut Tolerance</strong></h1>	
		</div>
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->

		<div class="row" style="height: 1800px;">
   <!-- Props para hacer aparecer el scroll ****************************************************************************************************-->
			<h2>Product Line</h2>
			<!-- GridView for Facilities -------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGrid_Facility" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowSorting="True" AutoGenerateColumns="False"  
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceFacility">
					<ClientSettings>
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="productLine_id,Expr1" DataSourceID="SqlDataSourceFacility" >
					   
						<Columns>
							<telerik:GridBoundColumn DataField="productLine_id" DataType="System.Int32" FilterControlAltText="Filter productLine_id column" HeaderText="Product Line ID" ReadOnly="True" SortExpression="productLine_id" UniqueName="productLine_id">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="productLine_productLine" FilterControlAltText="Filter productLine_productLine column" HeaderText="Product Line Name" SortExpression="productLine_productLine" UniqueName="productLine_productLine">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="facility_name" FilterControlAltText="Filter facility_name column" HeaderText="Facility Name" SortExpression="facility_name" UniqueName="facility_name">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="facility_id" DataType="System.Int32" FilterControlAltText="Filter facility_id column" HeaderText="facility_id" SortExpression="facility_id" UniqueName="facility_id" Visible="False">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="productLine_description" FilterControlAltText="Filter productLine_description column" HeaderText="Product Line Description" SortExpression="productLine_description" UniqueName="productLine_description">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="Expr1" DataType="System.Int32" FilterControlAltText="Filter Expr1 column" HeaderText="Expr1" ReadOnly="True" SortExpression="Expr1" UniqueName="Expr1" Visible="False">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="facility_description" FilterControlAltText="Filter facility_description column" HeaderText="Facility Description" SortExpression="facility_description" UniqueName="facility_description">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceFacility" runat="server" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" SelectCommand="SELECT ProductLine.productLine_id, ProductLine.facility_id, ProductLine.productLine_productLine, ProductLine.productLine_description, Facility.facility_id AS Expr1, Facility.facility_name, Facility.facility_description FROM ProductLine INNER JOIN Facility ON ProductLine.facility_id = Facility.facility_id"></asp:SqlDataSource>
			</div>
			<!-- GridView for Facilities -------------------------------------------------------------------------------------------------------->
			<div>
			</div>
			<p>&nbsp;</p>
			<h2>Cut Tolerance Types</h2>
			<!-- GridView for Cut Tolerance Types ------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGrid_CutToleranceType" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" 
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceCutToleranceType">
					<ClientSettings>
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="cutToleranceType_id"  CommandItemDisplay="Top" DataSourceID="SqlDataSourceCutToleranceType">
					   
						<Columns>
							<telerik:GridBoundColumn DataField="cutToleranceType_id" DataType="System.Int32" FilterControlAltText="Filter cutToleranceType_id column" HeaderText="Cut Tolerance Type ID" ReadOnly="True" SortExpression="cutToleranceType_id" UniqueName="cutToleranceType_id">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutToleranceType_nombre" FilterControlAltText="Filter cutToleranceType_nombre column" HeaderText="Name" SortExpression="cutToleranceType_nombre" UniqueName="cutToleranceType_nombre">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutToleranceType_descripción" FilterControlAltText="Filter cutToleranceType_descripción column" HeaderText="Description" SortExpression="cutToleranceType_descripción" UniqueName="cutToleranceType_descripción">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceCutToleranceType" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" DeleteCommand="DELETE FROM [CutToleranceType] WHERE [cutToleranceType_id] = @original_cutToleranceType_id AND (([cutToleranceType_nombre] = @original_cutToleranceType_nombre) OR ([cutToleranceType_nombre] IS NULL AND @original_cutToleranceType_nombre IS NULL)) AND (([cutToleranceType_descripción] = @original_cutToleranceType_descripción) OR ([cutToleranceType_descripción] IS NULL AND @original_cutToleranceType_descripción IS NULL))" InsertCommand="INSERT INTO [CutToleranceType] ([cutToleranceType_nombre], [cutToleranceType_descripción]) VALUES (@cutToleranceType_nombre, @cutToleranceType_descripción)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CutToleranceType] ORDER BY [cutToleranceType_nombre]" UpdateCommand="UPDATE [CutToleranceType] SET [cutToleranceType_nombre] = @cutToleranceType_nombre, [cutToleranceType_descripción] = @cutToleranceType_descripción WHERE [cutToleranceType_id] = @original_cutToleranceType_id AND (([cutToleranceType_nombre] = @original_cutToleranceType_nombre) OR ([cutToleranceType_nombre] IS NULL AND @original_cutToleranceType_nombre IS NULL)) AND (([cutToleranceType_descripción] = @original_cutToleranceType_descripción) OR ([cutToleranceType_descripción] IS NULL AND @original_cutToleranceType_descripción IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_cutToleranceType_id" Type="Int32" />
						<asp:Parameter Name="original_cutToleranceType_nombre" Type="String" />
						<asp:Parameter Name="original_cutToleranceType_descripción" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="cutToleranceType_nombre" Type="String" />
						<asp:Parameter Name="cutToleranceType_descripción" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="cutToleranceType_nombre" Type="String" />
						<asp:Parameter Name="cutToleranceType_descripción" Type="String" />
						<asp:Parameter Name="original_cutToleranceType_id" Type="Int32" />
						<asp:Parameter Name="original_cutToleranceType_nombre" Type="String" />
						<asp:Parameter Name="original_cutToleranceType_descripción" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
			</div>

			<!-- End GridView for Cut Tolerance Types ---------------------------------------------------------------------------------------------------->
			
			<p>&nbsp;</p>
			<h2>Cut Tolerance</h2>
			<!-- GridView for Cut Tolerance ------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12" >
				<telerik:RadGrid ID="RadGrid_CutTolerance" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowSorting="True"
					 AutoGenerateColumns="False" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" ShowGroupPanel="True" 
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceCutTolerance">
					<ClientSettings  AllowDragToGroup="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="cutTolerance_id"  CommandItemDisplay="Top" DataSourceID="SqlDataSourceCutTolerance">
					   
						<Columns>
							<telerik:GridBoundColumn DataField="cutTolerance_id" DataType="System.Int32" FilterControlAltText="Filter cutTolerance_id column" HeaderText="cutTolerance_id" ReadOnly="True" SortExpression="cutTolerance_id" UniqueName="cutTolerance_id" Visible="False">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="productLine_id" DataType="System.Int32" FilterControlAltText="Filter productLine_id column" HeaderText="Product Line ID (Previous table)" SortExpression="productLine_id" UniqueName="productLine_id">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutToleranceType_id" DataType="System.Int32" FilterControlAltText="Filter cutToleranceType_id column" HeaderText="Cut Tolerance Type ID (Previous table)" SortExpression="cutToleranceType_id" UniqueName="cutToleranceType_id">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutTolerance_nombre" FilterControlAltText="Filter cutTolerance_nombre column" HeaderText="Name" SortExpression="cutTolerance_nombre" UniqueName="cutTolerance_nombre">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutTolerance_unidad" FilterControlAltText="Filter cutTolerance_unidad column" HeaderText="Unit" SortExpression="cutTolerance_unidad" UniqueName="cutTolerance_unidad">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutTolerance_min" DataType="System.Decimal" FilterControlAltText="Filter cutTolerance_min column" HeaderText="Min" SortExpression="cutTolerance_min" UniqueName="cutTolerance_min">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutTolerance__max" DataType="System.Decimal" FilterControlAltText="Filter cutTolerance__max column" HeaderText="Max" SortExpression="cutTolerance__max" UniqueName="cutTolerance__max">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutTolerance_signoTolerancia" FilterControlAltText="Filter cutTolerance_signoTolerancia column" HeaderText="Tolerance Sign (+, -, +-)" SortExpression="cutTolerance_signoTolerancia" UniqueName="cutTolerance_signoTolerancia">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutTolerance_tolerancia" DataType="System.Decimal" FilterControlAltText="Filter cutTolerance_tolerancia column" HeaderText="Tolerance" SortExpression="cutTolerance_tolerancia" UniqueName="cutTolerance_tolerancia">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="cutTolerance_descripción" FilterControlAltText="Filter cutTolerance_descripción column" HeaderText="description" SortExpression="cutTolerance_descripción" UniqueName="cutTolerance_descripción">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceCutTolerance" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" DeleteCommand="DELETE FROM [CutTolerance] WHERE [cutTolerance_id] = @original_cutTolerance_id AND [cutToleranceType_id] = @original_cutToleranceType_id AND [productLine_id] = @original_productLine_id AND (([cutTolerance_nombre] = @original_cutTolerance_nombre) OR ([cutTolerance_nombre] IS NULL AND @original_cutTolerance_nombre IS NULL)) AND (([cutTolerance_unidad] = @original_cutTolerance_unidad) OR ([cutTolerance_unidad] IS NULL AND @original_cutTolerance_unidad IS NULL)) AND (([cutTolerance_min] = @original_cutTolerance_min) OR ([cutTolerance_min] IS NULL AND @original_cutTolerance_min IS NULL)) AND (([cutTolerance__max] = @original_cutTolerance_max) OR ([cutTolerance__max] IS NULL AND @original_cutTolerance_max IS NULL)) AND (([cutTolerance_signoTolerancia] = @original_cutTolerance_signoTolerancia) OR ([cutTolerance_signoTolerancia] IS NULL AND @original_cutTolerance_signoTolerancia IS NULL)) AND (([cutTolerance_tolerancia] = @original_cutTolerance_tolerancia) OR ([cutTolerance_tolerancia] IS NULL AND @original_cutTolerance_tolerancia IS NULL)) AND (([cutTolerance_descripción] = @original_cutTolerance_descripción) OR ([cutTolerance_descripción] IS NULL AND @original_cutTolerance_descripción IS NULL))" InsertCommand="INSERT INTO [CutTolerance] ([cutToleranceType_id], [productLine_id], [cutTolerance_nombre], [cutTolerance_unidad], [cutTolerance_min], [cutTolerance__max], [cutTolerance_signoTolerancia], [cutTolerance_tolerancia], [cutTolerance_descripción]) VALUES (@cutToleranceType_id, @productLine_id, @cutTolerance_nombre, @cutTolerance_unidad, @cutTolerance_min, @cutTolerance_max, @cutTolerance_signoTolerancia, @cutTolerance_tolerancia, @cutTolerance_descripción)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CutTolerance] ORDER BY [cutTolerance_nombre]" UpdateCommand="UPDATE [CutTolerance] SET [cutToleranceType_id] = @cutToleranceType_id, [productLine_id] = @productLine_id, [cutTolerance_nombre] = @cutTolerance_nombre, [cutTolerance_unidad] = @cutTolerance_unidad, [cutTolerance_min] = @cutTolerance_min, [cutTolerance__max] = @cutTolerance_max, [cutTolerance_signoTolerancia] = @cutTolerance_signoTolerancia, [cutTolerance_tolerancia] = @cutTolerance_tolerancia, [cutTolerance_descripción] = @cutTolerance_descripción WHERE [cutTolerance_id] = @original_cutTolerance_id AND [cutToleranceType_id] = @original_cutToleranceType_id AND [productLine_id] = @original_productLine_id AND (([cutTolerance_nombre] = @original_cutTolerance_nombre) OR ([cutTolerance_nombre] IS NULL AND @original_cutTolerance_nombre IS NULL)) AND (([cutTolerance_unidad] = @original_cutTolerance_unidad) OR ([cutTolerance_unidad] IS NULL AND @original_cutTolerance_unidad IS NULL)) AND (([cutTolerance_min] = @original_cutTolerance_min) OR ([cutTolerance_min] IS NULL AND @original_cutTolerance_min IS NULL)) AND (([cutTolerance__max] = @original_cutTolerance_max) OR ([cutTolerance__max] IS NULL AND @original_cutTolerance_max IS NULL)) AND (([cutTolerance_signoTolerancia] = @original_cutTolerance_signoTolerancia) OR ([cutTolerance_signoTolerancia] IS NULL AND @original_cutTolerance_signoTolerancia IS NULL)) AND (([cutTolerance_tolerancia] = @original_cutTolerance_tolerancia) OR ([cutTolerance_tolerancia] IS NULL AND @original_cutTolerance_tolerancia IS NULL)) AND (([cutTolerance_descripción] = @original_cutTolerance_descripción) OR ([cutTolerance_descripción] IS NULL AND @original_cutTolerance_descripción IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_cutTolerance_id" Type="Int32" />
						<asp:Parameter Name="original_cutToleranceType_id" Type="Int32" />
						<asp:Parameter Name="original_productLine_id" Type="Int32" />
						<asp:Parameter Name="original_cutTolerance_nombre" Type="String" />
						<asp:Parameter Name="original_cutTolerance_unidad" Type="String" />
						<asp:Parameter Name="original_cutTolerance_min" Type="Decimal" />
						<asp:Parameter Name="original_cutTolerance_max" Type="Decimal" />
						<asp:Parameter Name="original_cutTolerance_signoTolerancia" Type="String" />
						<asp:Parameter Name="original_cutTolerance_tolerancia" Type="Decimal" />
						<asp:Parameter Name="original_cutTolerance_descripción" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="cutToleranceType_id" Type="Int32" />
						<asp:Parameter Name="productLine_id" Type="Int32" />
						<asp:Parameter Name="cutTolerance_nombre" Type="String" />
						<asp:Parameter Name="cutTolerance_unidad" Type="String" />
						<asp:Parameter Name="cutTolerance_min" Type="Decimal" />
						<asp:Parameter Name="cutTolerance_max" Type="Decimal" />
						<asp:Parameter Name="cutTolerance_signoTolerancia" Type="String" />
						<asp:Parameter Name="cutTolerance_tolerancia" Type="Decimal" />
						<asp:Parameter Name="cutTolerance_descripción" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="cutToleranceType_id" Type="Int32" />
						<asp:Parameter Name="productLine_id" Type="Int32" />
						<asp:Parameter Name="cutTolerance_nombre" Type="String" />
						<asp:Parameter Name="cutTolerance_unidad" Type="String" />
						<asp:Parameter Name="cutTolerance_min" Type="Decimal" />
						<asp:Parameter Name="cutTolerance_max" Type="Decimal" />
						<asp:Parameter Name="cutTolerance_signoTolerancia" Type="String" />
						<asp:Parameter Name="cutTolerance_tolerancia" Type="Decimal" />
						<asp:Parameter Name="cutTolerance_descripción" Type="String" />
						<asp:Parameter Name="original_cutTolerance_id" Type="Int32" />
						<asp:Parameter Name="original_cutToleranceType_id" Type="Int32" />
						<asp:Parameter Name="original_productLine_id" Type="Int32" />
						<asp:Parameter Name="original_cutTolerance_nombre" Type="String" />
						<asp:Parameter Name="original_cutTolerance_unidad" Type="String" />
						<asp:Parameter Name="original_cutTolerance_min" Type="Decimal" />
						<asp:Parameter Name="original_cutTolerance_max" Type="Decimal" />
						<asp:Parameter Name="original_cutTolerance_signoTolerancia" Type="String" />
						<asp:Parameter Name="original_cutTolerance_tolerancia" Type="Decimal" />
						<asp:Parameter Name="original_cutTolerance_descripción" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
			</div>
			<!-- End GridView for Cut Tolerance ---------------------------------------------------------------------------------------------------->
			<!-- End WebPageContent ---------------------------------------------------------------------------------------------------->
			<p>&nbsp;</p>
		    <p>&copy; Copyright <%: DateTime.Now.Year %> - Thyssenkrupp Mexico</p>
		</div>
		<div>
			
		</div>
	</div>


	<footer>
		<p>&nbsp;</p>
	</footer>


</asp:Content>
