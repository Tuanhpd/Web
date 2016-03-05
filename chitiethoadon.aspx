<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="chitiethoadon.aspx.vb" Inherits="tuanhpd01421.chitiethoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaSP,MaHD" DataSourceID="SqlDataSource1" Height="195px" 
        Width="665px">
        <Columns>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" 
                SortExpression="MaSP" />
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" 
                SortExpression="MaHD" />
            <asp:BoundField DataField="SoLuongMua" HeaderText="SoLuongMua" 
                SortExpression="SoLuongMua" />
            <asp:BoundField DataField="DonGiaBan" HeaderText="DonGiaBan" 
                SortExpression="DonGiaBan" />
            <asp:BoundField DataField="HoaDon_MaHD" HeaderText="HoaDon_MaHD" 
                SortExpression="HoaDon_MaHD" />
            <asp:BoundField DataField="SanPham_MaSP" HeaderText="SanPham_MaSP" 
                SortExpression="SanPham_MaSP" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:tuanhpd01421ConnectionString %>" 
        DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaSP] = @MaSP AND [MaHD] = @MaHD" 
        InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaSP], [MaHD], [SoLuongMua], [DonGiaBan], [HoaDon_MaHD], [SanPham_MaSP]) VALUES (@MaSP, @MaHD, @SoLuongMua, @DonGiaBan, @HoaDon_MaHD, @SanPham_MaSP)" 
        SelectCommand="SELECT * FROM [ChiTietHoaDon]" 
        UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuongMua] = @SoLuongMua, [DonGiaBan] = @DonGiaBan, [HoaDon_MaHD] = @HoaDon_MaHD, [SanPham_MaSP] = @SanPham_MaSP WHERE [MaSP] = @MaSP AND [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="MaHD" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="SoLuongMua" Type="String" />
            <asp:Parameter Name="DonGiaBan" Type="Decimal" />
            <asp:Parameter Name="HoaDon_MaHD" Type="String" />
            <asp:Parameter Name="SanPham_MaSP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SoLuongMua" Type="String" />
            <asp:Parameter Name="DonGiaBan" Type="Decimal" />
            <asp:Parameter Name="HoaDon_MaHD" Type="String" />
            <asp:Parameter Name="SanPham_MaSP" Type="String" />
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="MaHD" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSP,MaHD" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MaSP:
            <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            MaHD:
            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            SoLuongMua:
            <asp:TextBox ID="SoLuongMuaTextBox" runat="server" 
                Text='<%# Bind("SoLuongMua") %>' />
            <br />
            DonGiaBan:
            <asp:TextBox ID="DonGiaBanTextBox" runat="server" 
                Text='<%# Bind("DonGiaBan") %>' />
            <br />
            HoaDon_MaHD:
            <asp:TextBox ID="HoaDon_MaHDTextBox" runat="server" 
                Text='<%# Bind("HoaDon_MaHD") %>' />
            <br />
            SanPham_MaSP:
            <asp:TextBox ID="SanPham_MaSPTextBox" runat="server" 
                Text='<%# Bind("SanPham_MaSP") %>' />
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
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            SoLuongMua:
            <asp:TextBox ID="SoLuongMuaTextBox" runat="server" 
                Text='<%# Bind("SoLuongMua") %>' />
            <br />
            DonGiaBan:
            <asp:TextBox ID="DonGiaBanTextBox" runat="server" 
                Text='<%# Bind("DonGiaBan") %>' />
            <br />
            HoaDon_MaHD:
            <asp:TextBox ID="HoaDon_MaHDTextBox" runat="server" 
                Text='<%# Bind("HoaDon_MaHD") %>' />
            <br />
            SanPham_MaSP:
            <asp:TextBox ID="SanPham_MaSPTextBox" runat="server" 
                Text='<%# Bind("SanPham_MaSP") %>' />
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
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            SoLuongMua:
            <asp:Label ID="SoLuongMuaLabel" runat="server" 
                Text='<%# Bind("SoLuongMua") %>' />
            <br />
            DonGiaBan:
            <asp:Label ID="DonGiaBanLabel" runat="server" Text='<%# Bind("DonGiaBan") %>' />
            <br />
            HoaDon_MaHD:
            <asp:Label ID="HoaDon_MaHDLabel" runat="server" 
                Text='<%# Bind("HoaDon_MaHD") %>' />
            <br />
            SanPham_MaSP:
            <asp:Label ID="SanPham_MaSPLabel" runat="server" 
                Text='<%# Bind("SanPham_MaSP") %>' />
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
