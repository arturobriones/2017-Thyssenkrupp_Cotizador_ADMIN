<%@ Page Title="Users" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="_2017_Thyssenkrupp_Cotizador_ADMIN.Admin.AdminHome" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

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
			<li class="divider"></li>
			<li class="active"><a href="/Admin/AdminHome.aspx">Users</a></li>
			<li><a href="/Admin/AdminClients.aspx">Clients</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Engineering <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<!--Ingenieria-->
					<!--Ingenieria-->
						<li><a href="/Admin/Admin_ProductLine.aspx">Product Line</a></li>
						<li><a href="/Admin/Admin_BlanksInformation.aspx">Blanks Information</a></li>
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
			<li class="divider"></li>
			<!--
			<li style="padding-left: 8px;">
				<telerik:RadButton ID="RadButtonEndSession" RenderMode="Lightweight" runat="server" Text="End Session" OnClientClicked="RadButtonEndSession_Click()" OnClientClicking="RadButtonEndSession_Click()"   ButtonType="StandardButton" ForeColor="White" BackColor="Red" OnClick="RadButtonEndSession_Click"></telerik:RadButton>
			</li>
			-->
		</ul>
	</div>
	<div class="container" id="page-content-wrapper" style="position: fixed; overflow: scroll; height:100%">
		
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->
		<div class="alert alert-dismissible alert-info">
		  <h1><strong>Users</strong></h1>
			
		</div>
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->

		<div class="row" style="height: 1100px;">
			<h3>User Roles</h3>
			<!-- WebPageContent -------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGridRoles" runat="server" RenderMode="Lightweight" DataSourceID="SqlDataSourceThyskDB" Skin="Office2010Blue" 
					AllowAutomaticUpdates="True" AllowAutomaticInserts="True" AllowPaging="True" PageSize="20"
					AllowAutomaticDeletes="True" AutoGenerateColumns="False" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" >
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>
					<MasterTableView DataKeyNames="categoria_id" DataSourceID="SqlDataSourceThyskDB" PageSize="25" AllowPaging="True" AllowSorting="True" CommandItemDisplay="Top">
						<CommandItemSettings  />
					  <Columns>
							<telerik:GridBoundColumn DataField="categoria_id" DataType="System.Int32" FilterControlAltText="Filter categoria_id column" HeaderText="Role ID" ReadOnly="True"
								SortExpression="categoria_id" UniqueName="categoria_id">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="categoria_nombre" FilterControlAltText="Filter categoria_nombre column" HeaderText="Name"
								SortExpression="categoria_nombre" UniqueName="categoria_nombre">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="categoria_descripcion" FilterControlAltText="Filter categoria_descripcion column" HeaderText="Description"
								SortExpression="categoria_descripcion" UniqueName="categoria_descripcion">
							</telerik:GridBoundColumn>
						</Columns>
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceThyskDB" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>"
					DeleteCommand="DELETE FROM [Categoria] WHERE [categoria_id] = @original_categoria_id AND (([categoria_nombre] = @original_categoria_nombre) OR ([categoria_nombre] IS NULL AND @original_categoria_nombre IS NULL)) AND (([categoria_descripcion] = @original_categoria_descripcion) OR ([categoria_descripcion] IS NULL AND @original_categoria_descripcion IS NULL))"
					InsertCommand="INSERT INTO [Categoria] ([categoria_nombre], [categoria_descripcion]) VALUES (@categoria_nombre, @categoria_descripcion)"
					OldValuesParameterFormatString="original_{0}"
					SelectCommand="SELECT * FROM [Categoria]"
					UpdateCommand="UPDATE [Categoria] SET [categoria_nombre] = @categoria_nombre, [categoria_descripcion] = @categoria_descripcion WHERE [categoria_id] = @original_categoria_id AND (([categoria_nombre] = @original_categoria_nombre) OR ([categoria_nombre] IS NULL AND @original_categoria_nombre IS NULL)) AND (([categoria_descripcion] = @original_categoria_descripcion) OR ([categoria_descripcion] IS NULL AND @original_categoria_descripcion IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_categoria_id" Type="Int32" />
						<asp:Parameter Name="original_categoria_nombre" Type="String" />
						<asp:Parameter Name="original_categoria_descripcion" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="categoria_nombre" Type="String" />
						<asp:Parameter Name="categoria_descripcion" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="categoria_nombre" Type="String" />
						<asp:Parameter Name="categoria_descripcion" Type="String" />
						<asp:Parameter Name="original_categoria_id" Type="Int32" />
						<asp:Parameter Name="original_categoria_nombre" Type="String" />
						<asp:Parameter Name="original_categoria_descripcion" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
			</div>
			<p>&nbsp;</p>
			<h3>Users</h3>
			<!-- GridView for Users ------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGridUser" runat="server" RenderMode="Lightweight" AllowAutomaticDeletes="True" AllowAutomaticInserts="True"
					AllowAutomaticUpdates="True" DataSourceID="SqlDataSourceUsers" Skin="Office2010Blue" AutoGenerateColumns="False" AutoGenerateDeleteColumn="True"
					AutoGenerateEditColumn="True" AllowPaging="True" PageSize="50" AllowSorting="True">
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>
					<MasterTableView DataKeyNames="usuario_id" DataSourceID="SqlDataSourceUsers" CommandItemDisplay="Top">
						<CommandItemSettings />
						<Columns>
							<telerik:GridBoundColumn DataField="usuario_id" DataType="System.Int32" FilterControlAltText="Filter usuario_id column" HeaderText="usuario_id" ReadOnly="True" SortExpression="usuario_id" UniqueName="usuario_id" Visible="False">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_categoria_id" DataType="System.Int32" FilterControlAltText="Filter usuario_categoria_id column" HeaderText="Role ID (Previous Table)" SortExpression="usuario_categoria_id" UniqueName="usuario_categoria_id">
								<ColumnValidationSettings EnableModelErrorMessageValidation="True">
								</ColumnValidationSettings>
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_nombre" FilterControlAltText="Filter usuario_nombre column" HeaderText="First Name" SortExpression="usuario_nombre" UniqueName="usuario_nombre">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_apellidoPaterno" FilterControlAltText="Filter usuario_apellidoPaterno column" HeaderText="Last Name" SortExpression="usuario_apellidoPaterno" UniqueName="usuario_apellidoPaterno">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_apellidoMaterno" FilterControlAltText="Filter usuario_apellidoMaterno column" HeaderText="Mother's Maiden Name" SortExpression="usuario_apellidoMaterno" UniqueName="usuario_apellidoMaterno">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_email" FilterControlAltText="Filter usuario_email column" HeaderText="e-Mail" SortExpression="usuario_email" UniqueName="usuario_email">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_telefono" FilterControlAltText="Filter usuario_telefono column" HeaderText="Telephone" SortExpression="usuario_telefono" UniqueName="usuario_telefono">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_extension" FilterControlAltText="Filter usuario_extension column" HeaderText="Extension" SortExpression="usuario_extension" UniqueName="usuario_extension">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_usuario" FilterControlAltText="Filter usuario_usuario column" HeaderText="User" SortExpression="usuario_usuario" UniqueName="usuario_usuario">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="usuario_contrasena" FilterControlAltText="Filter usuario_contrasena column" HeaderText="Password" SortExpression="usuario_contrasena" UniqueName="usuario_contrasena">
							</telerik:GridBoundColumn>
						</Columns>
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
			</div>
			<asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>"
				DeleteCommand="DELETE FROM [Usuario] WHERE [usuario_id] = @original_usuario_id AND (([usuario_categoria_id] = @original_usuario_categoria_id) OR ([usuario_categoria_id] IS NULL AND @original_usuario_categoria_id IS NULL)) AND (([usuario_nombre] = @original_usuario_nombre) OR ([usuario_nombre] IS NULL AND @original_usuario_nombre IS NULL)) AND (([usuario_apellidoPaterno] = @original_usuario_apellidoPaterno) OR ([usuario_apellidoPaterno] IS NULL AND @original_usuario_apellidoPaterno IS NULL)) AND (([usuario_apellidoMaterno] = @original_usuario_apellidoMaterno) OR ([usuario_apellidoMaterno] IS NULL AND @original_usuario_apellidoMaterno IS NULL)) AND (([usuario_email] = @original_usuario_email) OR ([usuario_email] IS NULL AND @original_usuario_email IS NULL)) AND (([usuario_telefono] = @original_usuario_telefono) OR ([usuario_telefono] IS NULL AND @original_usuario_telefono IS NULL)) AND (([usuario_extension] = @original_usuario_extension) OR ([usuario_extension] IS NULL AND @original_usuario_extension IS NULL)) AND (([usuario_usuario] = @original_usuario_usuario) OR ([usuario_usuario] IS NULL AND @original_usuario_usuario IS NULL)) AND (([usuario_contrasena] = @original_usuario_contrasena) OR ([usuario_contrasena] IS NULL AND @original_usuario_contrasena IS NULL))"
				InsertCommand="INSERT INTO [Usuario] ([usuario_categoria_id], [usuario_nombre], [usuario_apellidoPaterno], [usuario_apellidoMaterno], [usuario_email], [usuario_telefono], [usuario_extension], [usuario_usuario], [usuario_contrasena]) VALUES (@usuario_categoria_id, @usuario_nombre, @usuario_apellidoPaterno, @usuario_apellidoMaterno, @usuario_email, @usuario_telefono, @usuario_extension, @usuario_usuario, @usuario_contrasena)"
				OldValuesParameterFormatString="original_{0}"
				SelectCommand="SELECT * FROM [Usuario]"
				UpdateCommand="UPDATE [Usuario] SET [usuario_categoria_id] = @usuario_categoria_id, [usuario_nombre] = @usuario_nombre, [usuario_apellidoPaterno] = @usuario_apellidoPaterno, [usuario_apellidoMaterno] = @usuario_apellidoMaterno, [usuario_email] = @usuario_email, [usuario_telefono] = @usuario_telefono, [usuario_extension] = @usuario_extension, [usuario_usuario] = @usuario_usuario, [usuario_contrasena] = @usuario_contrasena WHERE [usuario_id] = @original_usuario_id AND (([usuario_categoria_id] = @original_usuario_categoria_id) OR ([usuario_categoria_id] IS NULL AND @original_usuario_categoria_id IS NULL)) AND (([usuario_nombre] = @original_usuario_nombre) OR ([usuario_nombre] IS NULL AND @original_usuario_nombre IS NULL)) AND (([usuario_apellidoPaterno] = @original_usuario_apellidoPaterno) OR ([usuario_apellidoPaterno] IS NULL AND @original_usuario_apellidoPaterno IS NULL)) AND (([usuario_apellidoMaterno] = @original_usuario_apellidoMaterno) OR ([usuario_apellidoMaterno] IS NULL AND @original_usuario_apellidoMaterno IS NULL)) AND (([usuario_email] = @original_usuario_email) OR ([usuario_email] IS NULL AND @original_usuario_email IS NULL)) AND (([usuario_telefono] = @original_usuario_telefono) OR ([usuario_telefono] IS NULL AND @original_usuario_telefono IS NULL)) AND (([usuario_extension] = @original_usuario_extension) OR ([usuario_extension] IS NULL AND @original_usuario_extension IS NULL)) AND (([usuario_foto] = @original_usuario_foto) OR ([usuario_foto] IS NULL AND @original_usuario_foto IS NULL)) AND (([usuario_usuario] = @original_usuario_usuario) OR ([usuario_usuario] IS NULL AND @original_usuario_usuario IS NULL)) AND (([usuario_contrasena] = @original_usuario_contrasena) OR ([usuario_contrasena] IS NULL AND @original_usuario_contrasena IS NULL))">
				<DeleteParameters>
					<asp:Parameter Name="original_usuario_id" Type="Int32" />
					<asp:Parameter Name="original_usuario_categoria_id" Type="Int32" />
					<asp:Parameter Name="original_usuario_nombre" Type="String" />
					<asp:Parameter Name="original_usuario_apellidoPaterno" Type="String" />
					<asp:Parameter Name="original_usuario_apellidoMaterno" Type="String" />
					<asp:Parameter Name="original_usuario_email" Type="String" />
					<asp:Parameter Name="original_usuario_telefono" Type="String" />
					<asp:Parameter Name="original_usuario_extension" Type="String" />
					<asp:Parameter Name="original_usuario_usuario" Type="String" />
					<asp:Parameter Name="original_usuario_contrasena" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="usuario_categoria_id" Type="Int32" />
					<asp:Parameter Name="usuario_nombre" Type="String" />
					<asp:Parameter Name="usuario_apellidoPaterno" Type="String" />
					<asp:Parameter Name="usuario_apellidoMaterno" Type="String" />
					<asp:Parameter Name="usuario_email" Type="String" />
					<asp:Parameter Name="usuario_telefono" Type="String" />
					<asp:Parameter Name="usuario_extension" Type="String" />
					<asp:Parameter Name="usuario_usuario" Type="String" />
					<asp:Parameter Name="usuario_contrasena" Type="String" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="usuario_categoria_id" Type="Int32" />
					<asp:Parameter Name="usuario_nombre" Type="String" />
					<asp:Parameter Name="usuario_apellidoPaterno" Type="String" />
					<asp:Parameter Name="usuario_apellidoMaterno" Type="String" />
					<asp:Parameter Name="usuario_email" Type="String" />
					<asp:Parameter Name="usuario_telefono" Type="String" />
					<asp:Parameter Name="usuario_extension" Type="String" />
					<asp:Parameter Name="usuario_usuario" Type="String" />
					<asp:Parameter Name="usuario_contrasena" Type="String" />
					<asp:Parameter Name="original_usuario_id" Type="Int32" />
					<asp:Parameter Name="original_usuario_categoria_id" Type="Int32" />
					<asp:Parameter Name="original_usuario_nombre" Type="String" />
					<asp:Parameter Name="original_usuario_apellidoPaterno" Type="String" />
					<asp:Parameter Name="original_usuario_apellidoMaterno" Type="String" />
					<asp:Parameter Name="original_usuario_email" Type="String" />
					<asp:Parameter Name="original_usuario_telefono" Type="String" />
					<asp:Parameter Name="original_usuario_extension" Type="String" />
					<asp:Parameter Name="original_usuario_foto" Type="Object" />
					<asp:Parameter Name="original_usuario_usuario" Type="String" />
					<asp:Parameter Name="original_usuario_contrasena" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
			<!-- End GridView for Users ---------------------------------------------------------------------------------------------------->
			<!-- End WebPageContent ---------------------------------------------------------------------------------------------------->
			<p>&nbsp;</p>
			<p>&copy; Copyright <%: DateTime.Now.Year %> - Thyssenkrupp Mexico</p>
		</div>
		<div>
			
		</div>
	</div>


	

</asp:Content>
