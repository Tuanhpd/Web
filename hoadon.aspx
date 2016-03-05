<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="hoadon.aspx.vb" Inherits="tuanhpd01421.hoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaHD" DataSourceID="SqlDataSource1" Height="210px" Width="641px">
        <Columns>
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" 
                SortExpression="MaHD" />
            <asp:BoundField DataField="NgayLap" HeaderText="NgayLap" 
                SortExpression="NgayLap" />
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
            <asp:BoundField DataField="KhachHang_MaKH" HeaderText="KhachHang_MaKH" 
                SortExpression="KhachHang_MaKH" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:tuanhpd01421ConnectionString %>" 
        DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" 
        InsertCommand="INSERT INTO [HoaDon] ([MaHD], [NgayLap], [MaKH], [KhachHang_MaKH]) VALUES (@MaHD, @NgayLap, @MaKH, @KhachHang_MaKH)" 
        SelectCommand="SELECT * FROM [HoaDon]" 
        UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [MaKH] = @MaKH, [KhachHang_MaKH] = @KhachHang_MaKH WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="NgayLap" Type="DateTime" />
            <asp:Parameter Name="MaKH" Type="String" />
            <asp:Parameter Name="KhachHang_MaKH" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NgayLap" Type="DateTime" />
            <asp:Parameter Name="MaKH" Type="String" />
            <asp:Parameter Name="KhachHang_MaKH" Type="String" />
            <asp:Parameter Name="MaHD" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaHD" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            NgayLap:
            <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
            <br />
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            KhachHang_MaKH:
            <asp:TextBox ID="KhachHang_MaKHTextBox" runat="server" 
                Text='<%# Bind("KhachHang_MaKH") %>' />
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
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            NgayLap:
            <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
            <br />
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            KhachHang_MaKH:
            <asp:TextBox ID="KhachHang_MaKHTextBox" runat="server" 
                Text='<%# Bind("KhachHang_MaKH") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            NgayLap:
            <asp:Label ID="NgayLapLabel" runat="server" Text='<%# Bind("NgayLap") %>' />
            <br />
            MaKH:
            <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            KhachHang_MaKH:
            <asp:Label ID="KhachHang_MaKHLabel" runat="server" 
                Text='<%# Bind("KhachHang_MaKH") %>' />
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
