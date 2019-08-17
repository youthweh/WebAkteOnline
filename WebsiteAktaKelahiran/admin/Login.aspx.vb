Imports BOL
Imports BLL
Imports System.Data
Imports System.Data.SqlClient

Partial Class Assets2_admin_Login
    Inherits System.Web.UI.Page

    Dim petugas_dinas As New Petugas_Dinas
    Dim petugas_dinasBLL As New Petugas_DinasBLL

    'Dim con As SqlConnection = New SqlConnection("Data Source=LAPTOP-J7REG266\sqlexpress;Integrated Security=True")
    'Dim cmd As SqlCommand

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'If con.State = ConnectionState.Open Then con.Close()

        'con.Open()
        If TextBox1.Text = "" Then
            MsgBox("Masukkan username..", MsgBoxStyle.Critical)
        ElseIf TextBox2.Text = "" Then
            MsgBox("Masukkan password..", MsgBoxStyle.Critical)
        Else
            petugas_dinas = petugas_dinasBLL.FillObjectFromTable(petugas_dinasBLL.GetDataByLogin(TextBox1.Text, TextBox2.Text))

            If petugas_dinas.id_petugas_dinas = "" Then
                MsgBox("Login gagal, Inputkan Valid username and password", MsgBoxStyle.Critical)
            Else
                Session("Admin") = petugas_dinas.id_petugas_dinas
                Response.Redirect("Admin.aspx")
            End If
            'Dim query As String
            'Query = "select * from admin where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'"
            'cmd = New SqlCommand(query, con)
            'Dim da As SqlDataAdapter = New SqlDataAdapter(cmd)
            'Dim ds As DataSet = New DataSet()
            'da.Fill(ds)
            'Dim a As Integer
            'a = ds.Tables(0).Rows.Count
            'If a = 0 Then
            '    MsgBox("Login gagal, Inputkan Valid username and password", MsgBoxStyle.Critical)
            'Else
            '    Response.Redirect("Admin.aspx")
            'End If

        End If

    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
End Class
