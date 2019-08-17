Imports BLL
Imports BOL
Partial Class assets_Default
    Inherits System.Web.UI.Page
    Public msg As String = ""
    Dim pelapor As New Pelapor
    Dim pelaporBLL As New PelaporBLL

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") IsNot Nothing Then
            If (Not Page.IsPostBack) Then
                pelapor = pelaporBLL.FillObjectFromTable(pelaporBLL.GetDataByNIK(Session("User")))
                txtNIK.Text = pelapor.nik
                txtNama.Text = pelapor.nama_lengkap
                txtEmail.Text = pelapor.email
                txtNoHP.Text = pelapor.no_hp
                txtNoKK.Text = pelapor.no_kk
                txtPassword.Text = pelapor.password
                txtPassword.Attributes("type") = "password"
            End If
        Else
            Response.Redirect("Beranda.aspx")
        End If

    End Sub


    Protected Sub btnSimpan_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSimpan.ServerClick
        pelapor.nik = txtNIK.Text
        pelapor.nama_lengkap = txtNama.Text
        pelapor.email = txtEmail.Text
        pelapor.no_hp = txtNoHP.Text
        pelapor.no_kk = txtNoKK.Text
        pelapor.password = txtPassword.Text

        msg = pelaporBLL.Crud(pelapor, "Update")
        If msg = "Update berhasil dilakukan" Then
            msg = "Edit Profile berhasil!"
            divBox.Attributes("class") += "alert-box success"
            divPopup.Visible = True
        Else
            divBox.Attributes("class") += "alert-box danger"
            divPopup.Visible = True
            msg = "Edit Profil gagal!"
        End If
    End Sub

End Class
