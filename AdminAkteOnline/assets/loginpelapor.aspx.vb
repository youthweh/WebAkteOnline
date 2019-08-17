Imports System.Data
Imports BLL
Imports BOL

Partial Class assets_Default
    Inherits System.Web.UI.Page

    Dim pelapor As New Pelapor
    Dim pelaporBLL As New PelaporBLL

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") IsNot Nothing Then
            Response.Redirect("Beranda2.aspx")
        End If
    End Sub

    Protected Sub btnLogin_click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.ServerClick
        pelapor = pelaporBLL.FillObjectFromTable(pelaporBLL.GetDataByLogin(txtEmail.Text, txtPassword.Text))
        If pelapor.nik = "" Then
            divError.Visible = True
        Else
            Session("User") = pelapor.nik
            Response.Redirect("Beranda2.aspx")
        End If
    End Sub

End Class