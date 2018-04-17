﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" MasterPageFile="~/MasterPage.Master" Inherits="waiterApp.signup" %>

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
        <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="updatePanel1"><ContentTemplate>
        <div class="form-group col-md-6">
            
        <div class="row justify-content-center">
         <div class="btn-group mt-1 mb-3" role="group" aria-label="Basic example">
             <asp:Button runat="server" ID="customerBtn" OnClick="customerBtn_Click" CssClass="btn btn-primary btn-lg"  Text="Customer" />
            
            <asp:Button runat="server" ID="businessBtn" OnClick="businessBtn_Click" CssClass="btn btn-light btn-lg"  Text="Business" />  
        <!-- butonu anchorla değiştirebiliyourz burda hrefi aşağıdaki spekersa hedefledik-->        
          </div></div>
        </div>
      <div class="form-group col-md-6">
            <asp:Label ID="name" runat="server" Text="Name"></asp:Label><asp:TextBox ID="nameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label4" runat="server" Text="Surname"></asp:Label><asp:TextBox ID="srnameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        
        <div class="form-group col-md-6">
            <asp:Label ID="Label3" runat="server" Text="E-mail"></asp:Label><asp:TextBox ID="email_txtb" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="email_txtb" ErrorMessage="Please check your e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
        <asp:Panel runat="server" ID="x">
                <div class="form-group col-md-6">
                    <asp:Label ID="usename" runat="server" Text="User Name"></asp:Label><asp:TextBox ID="usernameBox" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
                </div>
               <div class="form-group col-md-6">
                   Birth Date: 
                   <div class="btn-group">
                       <asp:DropDownList runat="server" CssClass="form-control" ID="day">
                       </asp:DropDownList>
                       <asp:DropDownList runat="server" CssClass="form-control" ID="mount">
                       </asp:DropDownList>
                       <asp:DropDownList runat="server" CssClass="form-control" ID="year">
                       </asp:DropDownList>

                   </div>
               </div>
        
                <div class="form-group col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    <asp:DropDownList runat="server" CssClass="form-control" ID="gender">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                </asp:DropDownList>
               </div>
         </asp:Panel>
         <div class="form-group col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label><asp:TextBox ID="pass1" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox><br /><br />
        </div>
         <div class="form-group col-md-6">
            <asp:Label ID="Label2" runat="server" Text="VerifyPassword"></asp:Label><asp:TextBox ID="pass2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label6" runat="server" Text="Phone Number"></asp:Label><asp:TextBox ID="phone1" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label8" runat="server" Text="(Optional)Profile Picture (jpeg,png,gif or bmp,Less than 10 mb)"></asp:Label><asp:FileUpload ID="image" CssClass="form-control" runat="server" /><br /><br />
        </div>
        <div class="form-group col-md-6">
            <asp:Label ID="Label9" runat="server" Text="Country:"></asp:Label><asp:DropDownList ID="countrylist" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="countrylist_SelectedIndexChanged"></asp:DropDownList><br /><br />
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
        </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="businessBtn" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="customerBtn" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
            <asp:Button ID="Submit" runat="server" CssClass="btn btn-primary" OnClick="Submit_Click" Text="Submit"  />
        
    </div>
    
    </div>
</asp:Content> 

