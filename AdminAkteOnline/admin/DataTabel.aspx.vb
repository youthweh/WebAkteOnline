

Imports System.Data


Imports System.Data.SqlClient
Partial Class admin_DeletePelapor
    Inherits System.Web.UI.Page
   




    Protected Sub btnKirim_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnKirim.Click
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim xCommand As New SqlCommand
        Dim strSql As String
        Dim xAdapter As New SqlDataAdapter

        koneksi.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        koneksi.Open()
        'input data dengan executeNonQuery
        strSql = "insert into Petugas_Dinas(username,password) values('" + txtDepan.Text + "','" + txtPassword.Text + "')"

        xCommand.Connection = koneksi
        xCommand.CommandText = strSql
        xCommand.ExecuteNonQuery()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim koneksi2 As New SqlConnection
        Dim xDataset As New DataSet
        Dim xCommand As New SqlCommand

        Dim xAdapter As New SqlDataAdapter
        koneksi2.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        koneksi2.Open()
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
End Class
