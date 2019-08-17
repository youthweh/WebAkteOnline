Imports BLL
Imports BOL

Partial Class assets_Default
    Inherits System.Web.UI.Page

    Public msg As String = ""

    Dim pelapor As New Pelapor
    Dim pelaporBLL As New PelaporBLL

    Protected Sub btnDaftar_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDaftar.ServerClick
        pelapor.nik = txtNIK.Text
        pelapor.nama_lengkap = txtNama.Text
        pelapor.no_kk = txtNoKK.Text
        pelapor.email = txtEmail.Text
        pelapor.no_hp = txtNoHP.Text
        pelapor.password = txtPassword.Text

        msg = pelaporBLL.Crud(pelapor, "Insert")
        divPopup.Visible = True
        If msg = "Insert berhasil dilakukan" Then
            msg = "Daftar berhasil!"
            divBox.Attributes("class") += "alert-box success"
            divPopup.Visible = True
        Else
            divBox.Attributes("class") += "alert-box danger"
            divPopup.Visible = True
            msg = "Daftar gagal!"
        End If

    End Sub

End Class
