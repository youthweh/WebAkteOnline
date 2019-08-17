<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DataTabel.aspx.vb" Inherits="admin_DeletePelapor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 55%;
        }
        .style3
        {
            width: 221px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
        <br />
        <br />
        <br />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="data"  DataKeyNames="id_anak">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" 
                ShowDeleteButton="True" />
            <asp:BoundField DataField="id_anak" HeaderText="id_anak" InsertVisible="False" 
                ReadOnly="True" SortExpression="id_anak" />
            <asp:BoundField DataField="nama_lengkap" HeaderText="nama_lengkap" 
                SortExpression="nama_lengkap" />
            <asp:BoundField DataField="unggah_foto_ktp_orangtua" 
                HeaderText="unggah_foto_ktp_orangtua" 
                SortExpression="unggah_foto_ktp_orangtua" />
            <asp:BoundField DataField="unggah_foto_kk" HeaderText="unggah_foto_kk" 
                SortExpression="unggah_foto_kk" />
            <asp:BoundField DataField="unggah_surat_kelahiran" 
                HeaderText="unggah_surat_kelahiran" SortExpression="unggah_surat_kelahiran" />
            <asp:BoundField DataField="unggah_kutipan_akta_nikah" 
                HeaderText="unggah_kutipan_akta_nikah" 
                SortExpression="unggah_kutipan_akta_nikah" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="data" runat="server" 
        ConnectionString="<%$ ConnectionStrings:akta_kelahiranLogin %>" 
        
           SelectCommand="SELECT * FROM [Anak]"           
           UpdateCommand="UPDATE [Anak] SET [status] = @status WHERE [id_anak] = @id_anak"
            DeleteCommand="DELETE FROM [Anak] WHERE [id_anak] = @id_anak" >
           <UpdateParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="id_anak" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="GridView1" Name="status" 
                                PropertyName="SelectedValue" Type="String" />
           
               </UpdateParameters>
               <DeleteParameters>
                    <asp:Parameter Name="id_anak" Type="String" />
               </DeleteParameters>
         </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="nik" DataSourceID="SqlDataSourcepelapor" AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="nik" HeaderText="NIK" ReadOnly="True" 
                SortExpression="nik" />
            <asp:BoundField DataField="nama_lengkap" HeaderText="Nama Lengkap" 
                SortExpression="nama_lengkap" />
            <asp:BoundField DataField="no_kk" HeaderText="No KK" SortExpression="no_kk" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="no_hp" HeaderText="No HP" SortExpression="no_hp" />
            <asp:BoundField DataField="password" HeaderText="Password" DataFormatString="*****"
                SortExpression="password" ApplyFormatInEditMode="True" ReadOnly="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSourcepelapor" runat="server" 
        ConnectionString="<%$ ConnectionStrings:akta_kelahiranLogin %>" 
        DeleteCommand="DELETE FROM [Pelapor] WHERE [nik] = @nik" 
        InsertCommand="INSERT INTO [Pelapor] ([nik], [nama_lengkap], [no_kk], [email], [no_hp], [password]) VALUES (@nik, @nama_lengkap, @no_kk, @email, @no_hp, @password)" 
        SelectCommand="SELECT * FROM [Pelapor]" 
        UpdateCommand="UPDATE [Pelapor] SET [nama_lengkap] = @nama_lengkap, [no_kk] = @no_kk, [email] = @email, [no_hp] = @no_hp, [password] = [password] WHERE [nik] = @nik">
        <DeleteParameters>
            <asp:Parameter Name="nik" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nik" Type="String" />
            <asp:Parameter Name="nama_lengkap" Type="String" />
            <asp:Parameter Name="no_kk" Type="Int32" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="no_hp" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nama_lengkap" Type="String" />
            <asp:Parameter Name="no_kk" Type="Int32" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="no_hp" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="nik" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    
       
    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True"  DataKeyNames="id_anak"
        AutoGenerateColumns="False" DataSourceID="Tampilgbr" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" 
                HeaderText="Action" />
            <asp:BoundField DataField="id_anak" HeaderText="ID Anak" InsertVisible="False" 
                ReadOnly="True" SortExpression="id_anak" />
                    <asp:BoundField DataField="nik" HeaderText="NIK Orangtua" InsertVisible="False" 
                ReadOnly="True" SortExpression="nik" />
            <asp:BoundField DataField="nama_lengkap" HeaderText="Nama Lengkap" 
                SortExpression="nama_lengkap" />
                    <asp:BoundField DataField="status" HeaderText="Status" 
                SortExpression="status" />
          <%--  <asp:BoundField DataField="unggah_foto_ktp_orangtua" 
                HeaderText="unggah_foto_ktp_orangtua" 
                SortExpression="unggah_foto_ktp_orangtua" />
            <asp:BoundField DataField="unggah_foto_kk" HeaderText="unggah_foto_kk" 
                SortExpression="unggah_foto_kk" />
            <asp:BoundField DataField="unggah_surat_kelahiran" 
                HeaderText="unggah_surat_kelahiran" SortExpression="unggah_surat_kelahiran" />
            <asp:BoundField DataField="unggah_kutipan_akta_nikah" 
                HeaderText="unggah_kutipan_akta_nikah" 
                SortExpression="unggah_kutipan_akta_nikah" />--%>
                <asp:ImageField ControlStyle-Height="50px" 
            ControlStyle-Width="80" DataImageUrlField="unggah_foto_ktp_orangtua" HeaderText="Foto KTP OrangTua"
                    DataImageUrlFormatString="{0}" >
<ControlStyle Height="80px" Width="100px"></ControlStyle>
                </asp:ImageField>
                <asp:ImageField ControlStyle-Height="200" 
            ControlStyle-Width="200" DataImageUrlField="unggah_foto_kk" HeaderText="Foto Kartu Keluarga" 
                    DataImageUrlFormatString="{0}" >
<ControlStyle Height="90px" Width="100px"></ControlStyle>
 </asp:ImageField>
  <asp:ImageField ControlStyle-Height="200" 
            ControlStyle-Width="200" DataImageUrlField="unggah_surat_kelahiran" HeaderText="Foto Surat Kelahiran"
                    DataImageUrlFormatString="{0}" >
<ControlStyle Height="90px" Width="100px"></ControlStyle>
                </asp:ImageField>
                <asp:ImageField ControlStyle-Height="200" 
            ControlStyle-Width="200" DataImageUrlField="unggah_kutipan_akta_nikah" HeaderText="Kutipan Akta nikah" 
                    DataImageUrlFormatString="{0}" >
<ControlStyle Height="90px" Width="100px"></ControlStyle>
 </asp:ImageField>
                    <asp:TemplateField HeaderText="View Unggah">
                    <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("unggah_foto_ktp_orangtua") %>' Target="_blank">
                             <img src='<%# Eval("unggah_foto_ktp_orangtua") %>'  alt="View Foto KTP Orangtua" />
                            </asp:HyperLink> &nbsp;
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("unggah_foto_kk") %>' Target="_blank">
                             <img src='<%# Eval("unggah_foto_kk") %>'  alt="View Foto Kartu Keluarga" />
                            </asp:HyperLink>
                             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# Eval("unggah_surat_kelahiran") %>' Target="_blank">
                             <img src='<%# Eval("unggah_surat_kelahiran") %>'  alt="View Surat Kelahiran" />
                            </asp:HyperLink> &nbsp;
                             <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("unggah_kutipan_akta_nikah") %>' Target="_blank">
                             <img src='<%# Eval("unggah_kutipan_akta_nikah") %>'  alt="View Akta Nikah" />
                            </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>


        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="Tampilgbr" runat="server" 
        ConnectionString="<%$ ConnectionStrings:akta_kelahiranLogin %>" 
        
        SelectCommand="SELECT [id_anak],[nik], [nama_lengkap], [status],[unggah_foto_ktp_orangtua], [unggah_foto_kk], [unggah_surat_kelahiran], [unggah_kutipan_akta_nikah] FROM [Anak]" 
        UpdateCommand="UPDATE [Anak] SET [status] = @status WHERE [id_anak] = @id_anak"
          DeleteCommand="DELETE FROM [Anak] WHERE [id_anak] = @id_anak" >
        <UpdateParameters>
            <asp:ControlParameter ControlID="GridView3" Name="status" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView3" Name="id_anak" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
          <DeleteParameters>
                    <asp:Parameter Name="id_anak" Type="String" />
               </DeleteParameters>
    </asp:SqlDataSource>

    
       
    <br />
    Insert dinas<br />
    <table class="style1">
        <tr>
            <td class="style3">
                Username *</td>
            <td>
                <asp:TextBox ID="txtDepan" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtDepan" ErrorMessage="username harus diisi"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password&nbsp; : *
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Password harus diisi"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Password berisi 8 karakter" 
                    ValidationExpression="[a-zA-Z0-9]{8}"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnKirim" runat="server" 
        Text="Kirim" />
    <br />

    
       
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False">
    </asp:GridView>
    <br />
    <br />

    
       
    </form>
</body>
</html>
