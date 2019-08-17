Imports BLL
Imports BOL
Partial Class assets_CekStatus
    Inherits System.Web.UI.Page
    Public anak As New Anak
    Dim anakBLL As New AnakBLL

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("User") IsNot Nothing Then
            anak = anakBLL.FillObjectFromTable(anakBLL.GetDataByNIK(Session("User")))

            rStatus.DataSource = anakBLL.GetDataByNIK(Session("User"))
            rStatus.DataBind()

        Else
            Response.Redirect("Beranda.aspx")
        End If
    End Sub
End Class
