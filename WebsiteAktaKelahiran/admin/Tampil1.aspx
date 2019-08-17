<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Tampil1.aspx.vb" Inherits="admin_Tampil1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Jumlah data pelapor :
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        Jumlah data akte kelahiran :<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        Jumlah data status diterima :<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        Jumlah data admin :<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="diproses"></asp:Label>
        <br />
        Banyaknya kelahiran berdasarkan jenis kelahiran<br />
        <asp:Chart ID="Chart1" runat="server" Height="355px" style="margin-bottom: 0px" 
            Width="456px" SuppressExceptions="True">
            <series>
                <asp:Series Name="Series1" YValuesPerPoint="2">
                </asp:Series>
            </series>
            <chartareas>
             <asp:ChartArea Name="Area0">
                </asp:ChartArea>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AkteConnectionString %>" 
            SelectCommand="SELECT [panjang], [tempat_lahir], [berat] FROM [anak]">
        </asp:SqlDataSource>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        TAHUN<br />
        <asp:Chart ID="Chart2" runat="server" Height="355px" style="margin-bottom: 0px" 
            Width="456px" DataSourceID="SqlDataSource5" SuppressExceptions="True">
            <series>
                <asp:Series Name="Series1" YValuesPerPoint="2" ChartType="Line" 
                    XValueMember="tanggal_lahir" YValueMembers="id_anak">
                </asp:Series>
            </series>
            <chartareas>
             <asp:ChartArea Name="Area0">
                </asp:ChartArea>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AkteConnectionString %>" 
            SelectCommand="SELECT [id_anak], [tanggal_lahir] FROM [anak]">
        </asp:SqlDataSource>
        <br />
        DATA ADMIN :<br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AkteConnectionString %>" 
            SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
        <br />
        DATA AKTE :<br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="id_anak" HeaderText="id_anak" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id_anak" />
                <asp:BoundField DataField="nama_bayi" HeaderText="nama_bayi" 
                    SortExpression="nama_bayi" />
                <asp:BoundField DataField="tempat_lahir" HeaderText="tempat_lahir" 
                    SortExpression="tempat_lahir" />
                <asp:BoundField DataField="tanggal_lahir" HeaderText="tanggal_lahir" 
                    SortExpression="tanggal_lahir" />
                <asp:BoundField DataField="jam_lahir" HeaderText="jam_lahir" 
                    SortExpression="jam_lahir" />
                <asp:BoundField DataField="jk" HeaderText="jk" SortExpression="jk" />
                <asp:BoundField DataField="jenis_kelahiran" HeaderText="jenis_kelahiran" 
                    SortExpression="jenis_kelahiran" />
                <asp:BoundField DataField="anak_ke" HeaderText="anak_ke" 
                    SortExpression="anak_ke" />
                <asp:BoundField DataField="berat" HeaderText="berat" SortExpression="berat" />
                <asp:BoundField DataField="panjang" HeaderText="panjang" 
                    SortExpression="panjang" />
                <asp:BoundField DataField="nik" HeaderText="nik" SortExpression="nik" />
                <asp:BoundField DataField="nik_ayah" HeaderText="nik_ayah" 
                    SortExpression="nik_ayah" />
                <asp:BoundField DataField="nik_ibu" HeaderText="nik_ibu" 
                    SortExpression="nik_ibu" />
                <asp:BoundField DataField="foto_ktp" HeaderText="foto_ktp" 
                    SortExpression="foto_ktp" />
                <asp:BoundField DataField="foto_kk" HeaderText="foto_kk" 
                    SortExpression="foto_kk" />
                <asp:BoundField DataField="foto_sk" HeaderText="foto_sk" 
                    SortExpression="foto_sk" />
                <asp:BoundField DataField="foto_aktanikah" HeaderText="foto_aktanikah" 
                    SortExpression="foto_aktanikah" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AkteConnectionString %>" 
            SelectCommand="SELECT * FROM [anak]"></asp:SqlDataSource>
        <br />
        DATA PELAPOR<br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="nik" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nik" HeaderText="nik" ReadOnly="True" 
                    SortExpression="nik" />
                <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
                <asp:BoundField DataField="no_kk" HeaderText="no_kk" SortExpression="no_kk" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="no_hp" HeaderText="no_hp" SortExpression="no_hp" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AkteConnectionString %>" 
            SelectCommand="SELECT [nik], [nama], [no_kk], [email], [no_hp], [status] FROM [pelapor]">
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
