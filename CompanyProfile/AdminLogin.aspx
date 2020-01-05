<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CompanyProfile.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        span {
        
                font-size:25px;
                color:black;
        }
    </style>
    <BR />
    <br />

    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <div class="form-group">
                <span>Enter User Name  </span>
                
                <asp:TextBox ID="Name" runat="server" required="" ></asp:TextBox>
                     
            </div>
                 <div class="form-group"> 
                <span>Enter Password</span>
                <asp:TextBox ID="Password" runat="server" required=""></asp:TextBox>
                     </div>
           <div class="form-group"> 
                 <asp:Button ID="BtnLogin" runat="server" Text="SignIn" CssClass="btn btn-primary" OnClick="BtnLogin_Click" />
                 <asp:Button ID="BtnReset" runat="server" Text="Clear" CssClass="btn btn-primary" />
               </div>
            </div>
        </div>
          <div class="col-md-12">
              <h1 id="msg" runat="server"></h1>

          </div>
</div>
    </div>
</asp:Content>
