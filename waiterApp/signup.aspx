<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" MasterPageFile="~/MasterPage.Master" Inherits="waiterApp.signup" %>

<asp:Content ID="cont1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5"> 
    <asp:Panel runat="server" ID="errorr_panel" Visible="false" CssClass="alert alert-warning alert-dismissible fade show col-md-6" >
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                   <asp:Label ID="success" runat="server" Visible="false"><strong>OK!</strong> You have successfully added the book.</asp:Label>
                    <asp:Label ID="fail" runat="server" Visible="false">Check your values again please</asp:Label>
        </asp:Panel>
    <div>
      <div class="form-group col-md-6">
            <asp:Label ID="name" runat="server" Text="Name"></asp:Label><asp:TextBox ID="nameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label4" runat="server" Text="Surname"></asp:Label><asp:TextBox ID="srnameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="usename" runat="server" Text="User Name"></asp:Label><asp:TextBox ID="usernameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><asp:TextBox ID="email1" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label5" runat="server" Text="Verify Email"></asp:Label><asp:TextBox ID="email2" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
         <div class="form-group col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label><asp:TextBox ID="pass1" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
         <div class="form-group col-md-6">
            <asp:Label ID="Label2" runat="server" Text="VerifyPassword"></asp:Label><asp:TextBox ID="pass2" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label6" runat="server" Text="Phone Number"></asp:Label><asp:TextBox ID="phone1" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label8" runat="server" Text="(Optional)Profile Picture (jpeg,png,gif or bmp,Less than 10 mb)"></asp:Label><asp:FileUpload ID="image" CssClass="form-control" runat="server" /><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label9" runat="server" Text="Country:"></asp:Label><asp:DropDownList ID="countrylist" CssClass="form-control" runat="server"></asp:DropDownList><br /><br />
        </div>
         <div class="form-group col-md-6">
            <asp:Label ID="Label7" runat="server" Text="City:"></asp:Label><asp:DropDownList ID="cityist" CssClass="form-control" runat="server"></asp:DropDownList><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label10" runat="server" Text="Langauge:"></asp:Label><asp:DropDownList ID="langlist" CssClass="form-control" runat="server"></asp:DropDownList><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label11" runat="server" Text="Currency:"></asp:Label><asp:DropDownList ID="currencylist" CssClass="form-control" runat="server"></asp:DropDownList><br /><br />
        </div>
        
            <asp:Button ID="Submit" runat="server" CssClass="btn btn-primary" Text="Submit"  />
        <%--email--%>
    </div>
    
    </div>
</asp:Content> 

