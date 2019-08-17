Imports BLL
Imports BOL
Partial Class assets_MasterPage
    Inherits System.Web.UI.MasterPage
    Dim pelaporBLL As New PelaporBLL
    Dim pelapor As New Pelapor

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") IsNot Nothing Then
            pelapor = pelaporBLL.FillObjectFromTable(pelaporBLL.GetDataByNIK(Session("User")))
            nav1.InnerText = pelapor.nama_lengkap
        lb2.Text = "Keluar"
        End If
    End Sub


    Protected Sub lb2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lb2.Click
        If Session("User") IsNot Nothing Then
            Session.Remove("User")
        End If
        Response.Redirect("loginpelapor.aspx")
    End Sub

    Protected Sub lbHome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbHome.Click
        If Session("User") IsNot Nothing Then
            Response.Redirect("Beranda2.aspx")
        Else
            Response.Redirect("Beranda.aspx")
        End If
    End Sub
End Class