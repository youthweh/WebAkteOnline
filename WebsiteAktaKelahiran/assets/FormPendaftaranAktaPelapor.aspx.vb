Imports BLL
Imports BOL
Partial Class assets_Default
    Inherits System.Web.UI.Page
    Public msg As String = ""
    Dim anakBLL As New AnakBLL
    Dim anak As New Anak

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") IsNot Nothing Then
            MultiView1.ActiveViewIndex = 0
            txtNikPelapor.Text = Session("User")
        Else
            Response.Redirect("Beranda.aspx")
        End If
    End Sub


    Protected Sub btnLanjutkan_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLanjutkan.ServerClick
        MultiView1.ActiveViewIndex = 1
    End Sub


    Protected Sub btnDaftar_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDaftar.ServerClick
        anak.nama_lengkap = txtName.Text
        anak.tempat_lahir = txtTempatLahir.Text
        anak.tanggal_lahir = txtTglLahir.Text
        anak.jam_lahir = txtJamLahir.Text
        anak.jenis_kelamin = rblJenisKelamin.Text
        anak.jenis_kelahiran = ddlJenisKelahiran.Text
        anak.anak_ke = txtAnakKe.Text
        anak.berat_badan = txtBeratBadan.Text
        anak.panjang_badan = txtPanjangBadan.Text
        anak.nik = txtNikPelapor.Text
        anak.unggah_foto_ktp_orangtua = "uploads/" + fuKTPPelapor.PostedFile.FileName
        fuKTPPelapor.SaveAs(Server.MapPath(anak.unggah_foto_ktp_orangtua))
        anak.unggah_foto_kk = "uploads/" + fuKK.PostedFile.FileName
        fuKK.SaveAs(Server.MapPath("uploads/" + fuKK.PostedFile.FileName))
        anak.unggah_surat_kelahiran = "uploads/" + fuSuratKelahiran.PostedFile.FileName
        fuSuratKelahiran.SaveAs(Server.MapPath("uploads/" + fuSuratKelahiran.PostedFile.FileName))
        anak.unggah_kutipan_akta_nikah = "uploads/" + fuAktaNikah.PostedFile.FileName
        fuAktaNikah.SaveAs(Server.MapPath("uploads/" + fuAktaNikah.PostedFile.FileName))
        
        msg = anakBLL.Crud(anak, "Insert")
        If msg = "Insert berhasil dilakukan" Then
            MultiView1.ActiveViewIndex = 2
            msg = "Pendaftaran Akta Kelahiran anak anda telah berhasil! <br /> Untuk proses penginputan bisa di lihat di halaman cek."
        Else
            MultiView1.ActiveViewIndex = 0
            divPopup.Visible = True
            msg = "Daftar gagal!"
        End If
    End Sub
End Class
