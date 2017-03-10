<%@ Page Title="Thyssenkrupp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_2017_Thyssenkrupp_Cotizador_ADMIN._Default" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    
    <div class="container">
        <!-- Jumbotron Row -->
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jumbotron">
                    <h1>Thyssenkrupp</h1>
                    <p class="lead">Welcome to the Admin Quotation Web Site</p>
                    <p></p>
                </div>
            </div>
        </div>
        
        <div>
            <h2>Login</h2>
        </div>
        <!-- User Login Row -->
        <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-2 col-xs-2">
                    <telerik:RadLabel ID="UILabelUser" runat="server">User: </telerik:RadLabel>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <telerik:RadTextBox ID="UITxtBxUser" Runat="server">
                    </telerik:RadTextBox>
                </div>
        </div>
        &nbsp;
        <!-- Pass Login Row -->
        <div class="row">
            <div class="col-lg-1 col-md-1 col-sm-2 col-xs-2">
                <telerik:RadLabel ID="UILabelPass" runat="server">Password: </telerik:RadLabel>
            </div>
             <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                 <telerik:RadTextBox ID="UITxtBxPassword" Runat="server" TextMode="Password">
                </telerik:RadTextBox>
             </div>   
                
        </div>
        &nbsp;
        <!-- Button Login -->
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-3" >
                <telerik:RadButton ID="UIButtonLogin" runat="server" Text="Enter"></telerik:RadButton>
            </div>
                
        </div>
        &nbsp;
    </div>


    

    

</asp:Content>
