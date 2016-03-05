<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="sanpham.aspx.vb" Inherits="tuanhpd01421.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaSP" DataSourceID="SqlDataSource1" Height="211px" Width="644px">
        <Columns>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" 
                SortExpression="MaSP" />
            <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
            <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" 
                SortExpression="SoLuong" />
            <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
            <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
            <asp:BoundField DataField="LoaiSanPham_MaLSP" HeaderText="LoaiSanPham_MaLSP" 
                SortExpression="LoaiSanPham_MaLSP" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:tuanhpd01421ConnectionString %>" 
        DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" 
        InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [SoLuong], [MoTa], [MaLSP], [LoaiSanPham_MaLSP]) VALUES (@MaSP, @TenSP, @SoLuong, @MoTa, @MaLSP, @LoaiSanPham_MaLSP)" 
        SelectCommand="SELECT * FROM [SanPham]" 
        UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [SoLuong] = @SoLuong, [MoTa] = @MoTa, [MaLSP] = @MaLSP, [LoaiSanPham_MaLSP] = @LoaiSanPham_MaLSP WHERE [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaSP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="SoLuong" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="MaLSP" Type="String" />
            <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="SoLuong" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="MaLSP" Type="String" />
            <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
            <asp:Parameter Name="MaSP" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSP" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MaSP:
            <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            TenSP:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            MoTa:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            MaLSP:
            <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
            <br />
            LoaiSanPham_MaLSP:
            <asp:TextBox ID="LoaiSanPham_MaLSPTextBox" runat="server" 
                Text='<%# Bind("LoaiSanPham_MaLSP") %>' />
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
            MaSP:
            <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            TenSP:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            MoTa:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            MaLSP:
            <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
            <br />
            LoaiSanPham_MaLSP:
            <asp:TextBox ID="LoaiSanPham_MaLSPTextBox" runat="server" 
                Text='<%# Bind("LoaiSanPham_MaLSP") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaSP:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            TenSP:
            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            MoTa:
            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            MaLSP:
            <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Bind("MaLSP") %>' />
            <br />
            LoaiSanPham_MaLSP:
            <asp:Label ID="LoaiSanPham_MaLSPLabel" runat="server" 
                Text='<%# Bind("LoaiSanPham_MaLSP") %>' />
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
