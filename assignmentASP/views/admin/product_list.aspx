<%@ Page Title="Product List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="product_list.aspx.cs" Inherits="assignmentASP.views.admin.product_list" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /><h2 class="text-center h1 fw-bold"><%: Title %>.</h2><br />
    <table class="table table-responsive" style="background-color: rgb(214, 221, 224);">
        <thead>
            <tr class="h4">
                <th>ID</th>
                <th>Products Name</th>
                <th>Products Category</th>
                <th>Products Prices</th>
            </tr>
        </thead>
    </table>
</asp:Content>