<%@ Page Title="Product List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="product_list.aspx.cs" Inherits="assignmentASP.views.admin.Product_list" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <br /><h2 class="text-center h1 fw-bold"><%: Title %>
        <asp:GridView ID="GridView1" runat="server" class="table table-responsive"  AutoGenerateColumns="False" DataKeyNames="p_id" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="p_id" HeaderText="p_id" ReadOnly="True" SortExpression="p_id" />
                <asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />
                <asp:BoundField DataField="p_category" HeaderText="p_category" SortExpression="p_category" />
                <asp:BoundField DataField="p_qty" HeaderText="p_qty" SortExpression="p_qty" />
                <asp:BoundField DataField="p_price" HeaderText="p_price" SortExpression="p_price" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCoffeeConnectionString %>" SelectCommand="SELECT * FROM [tbl_product]"></asp:SqlDataSource>
    <%--<table ID="p_list_view" runat="server" class="table table-responsive" style="background-color: rgb(214, 221, 224);">
        <thead>
            <tr class="h4">
                <th>ID</th>
                <th>Products Name</th>
                <th>Products Category</th>
                <th>Products Prices</th>
            </tr>
        </thead>
    </table>--%>
</asp:Content>