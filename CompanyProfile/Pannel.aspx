<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pannel.aspx.cs" Inherits="CompanyProfile.Pannel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .lk:hover {
            background-color:grey;
            color:white;
            font-size:20px;
            text-align:center;
        }
         .lk {
            background-color:black;
            color:white;
            font-size:20px;
            height:40px;
            margin:20px;
            text-align:center;
        }

    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="Staff.aspx" class="col-md-12 lk"> Add Employee</a>
            </div>
             <div class="col-md-12">
                <a href="Customer.aspx" class="col-md-12 lk"> Add Customer</a>
            </div>
             <div class="col-md-12">
                <a href="Recuritment.aspx" class="col-md-12 lk"> Add Job INfo</a>
            </div>


        </div>
    </div>
</asp:Content>
