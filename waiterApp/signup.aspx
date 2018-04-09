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
        <asp:Label ID="Label1"  runat="server" Text="Category"></asp:Label><asp:DropDownList ID="DropDownList1" AutoPostBack="true" CssClass="form-control" runat="server"> <asp:ListItem Text="Customer" Value="Customer"></asp:ListItem><asp:ListItem Text="Business" Value="business"></asp:ListItem></asp:DropDownList><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="usename" runat="server" Text="User Name"></asp:Label><asp:TextBox ID="usernameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="name" runat="server" Text="Name"></asp:Label><asp:TextBox ID="nameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label4" runat="server" Text="Surname"></asp:Label><asp:TextBox ID="srnameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label5" runat="server" Text="Restaurant Name"></asp:Label><asp:TextBox ID="restNameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label8" runat="server" Text="(Optional)Profile Picture (jpeg,png,gif or bmp,Less than 10 mb)"></asp:Label><asp:FileUpload ID="image" CssClass="form-control" runat="server" /><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label9" runat="server" Text="Address:"></asp:Label><asp:TextBox ID="addressBox" TextMode="MultiLine" CssClass="form-control col-md-12" style="height:250px;" runat="server" ></asp:TextBox><br /><br />
        </div>
        
            <asp:Button ID="Submit" runat="server" CssClass="btn btn-primary" Text="Submit"  />
        <%--email--%>
    </div>
    
    </div>
</asp:Content> 

