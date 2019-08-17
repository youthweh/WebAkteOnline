
Imports System.Data
Imports System.Data.SqlClient
Partial Class Assets2_admin_table
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim koneksi2 As New SqlConnection
        Dim strSql As String
        Dim xDataset As New DataSet
        Dim xCommand As New SqlCommand

        Dim xAdapter As New SqlDataAdapter
        koneksi2.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        koneksi2.Open()

        'input data dengan executeNonQuery
        strSql = "insert into Petugas_Dinas(username,password ) values('" + TextBox1.Text + "','" + TextBox2.Text + "')"

        xCommand.Connection = koneksi2
        xCommand.CommandText = strSql
        xCommand.ExecuteNonQuery()

        'menampilkan hasil inputan ke gridview
        xCommand.Connection = koneksi2
        xCommand.CommandType = CommandType.Text
        xCommand.CommandText = "select * from Petugas_Dinas"

        xAdapter = New SqlDataAdapter(xCommand)
        xAdapter.Fill(xDataset, "Petugas_Dinas")
        GridView4.DataSource = xDataset
        GridView4.DataBind()

        koneksi2.Close()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If
        Dim koneksi2 As New SqlConnection

        Dim xDataset As New DataSet
        Dim xCommand As New SqlCommand

        Dim xAdapter As New SqlDataAdapter
        koneksi2.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        koneksi2.Open()
        xAdapter = New SqlDataAdapter(xCommand)

        'menampilkan hasil inputan ke gridview
        xCommand.Connection = koneksi2
        xCommand.CommandType = CommandType.Text
        xCommand.CommandText = "select * from Petugas_Dinas"
        xAdapter.Fill(xDataset, "Petugas_Dinas")
        GridView4.DataSource = xDataset
        GridView4.DataBind()
    End Sub
End Class
