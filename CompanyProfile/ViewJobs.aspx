<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewJobs.aspx.cs" Inherits="CompanyProfile.ViewJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <style>
        table,  td, th {
            padding:10px;
            font-size:22px;
            text-align:center;
            color:black;
        }
        th {
        color:white;
        text-decoration:solid;
        background-color:darkgrey;
        }

    </style>
    <div class="container">
        <div class="row">
            <div class="table-responsive">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">

                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NoofSeatsLabel" runat="server" Text='<%# Eval("NoofSeats") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NoofSeatsTextBox" runat="server" Text='<%# Bind("NoofSeats") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NoofSeatsTextBox" runat="server" Text='<%# Bind("NoofSeats") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NoofSeatsLabel" runat="server" Text='<%# Eval("NoofSeats") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">id</th>
                                        <th runat="server">Designation</th>
                                        <th runat="server">NoofSeats</th>
                                        <th runat="server">Salary</th>
                                        <th runat="server">Status</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NoofSeatsLabel" runat="server" Text='<%# Eval("NoofSeats") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyProfileConnectionString4 %>" DeleteCommand="DELETE FROM [Recuritment] WHERE [id] = @id" InsertCommand="INSERT INTO [Recuritment] ([Designation], [NoofSeats], [Salary], [Status]) VALUES (@Designation, @NoofSeats, @Salary, @Status)" SelectCommand="SELECT * FROM [Recuritment] ORDER BY [id] DESC" UpdateCommand="UPDATE [Recuritment] SET [Designation] = @Designation, [NoofSeats] = @NoofSeats, [Salary] = @Salary, [Status] = @Status WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="NoofSeats" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Int32" />
                    <asp:Parameter Name="Status" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="NoofSeats" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Int32" />
                    <asp:Parameter Name="Status" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
            </div>
        </div>
</asp:Content>
