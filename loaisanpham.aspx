<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="loaisanpham.aspx.vb" Inherits="tuanhpd01421.loaisanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaLSP" DataSourceID="SqlDataSource1" Height="177px" Width="617px">
        <Columns>
            <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" 
                SortExpression="MaLSP" />
            <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" 
                SortExpression="TenLSP" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:tuanhpd01421ConnectionString %>" 
        DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLSP] = @MaLSP" 
        InsertCommand="INSERT INTO [LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" 
        SelectCommand="SELECT * FROM [LoaiSanPham]" 
        UpdateCommand="UPDATE [LoaiSanPham] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @MaLSP">
        <DeleteParameters>
            <asp:Parameter Name="MaLSP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaLSP" Type="String" />
            <asp:Parameter Name="TenLSP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLSP" Type="String" />
            <asp:Parameter Name="MaLSP" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaLSP" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MaLSP:
            <asp:Label ID="MaLSPLabel1" runat="server" Text='<%# Eval("MaLSP") %>' />
            <br />
            TenLSP:
            <asp:TextBox ID="TenLSPTextBox" runat="server" Text='<%# Bind("TenLSP") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EmptyDataTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </EmptyDataTemplate>
        <InsertItemTemplate>
            MaLSP:
            <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
            <br />
            TenLSP:
            <asp:TextBox ID="TenLSPTextBox" runat="server" Text='<%# Bind("TenLSP") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaLSP:
            <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Eval("MaLSP") %>' />
            <br />
            TenLSP:
            <asp:Label ID="TenLSPLabel" runat="server" Text='<%# Bind("TenLSP") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
