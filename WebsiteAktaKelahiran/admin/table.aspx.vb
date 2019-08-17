Imports BLL
Imports BOL
Partial Class Assets2_admin_table
    Inherits System.Web.UI.Page

    Dim pelaporBLL As New PelaporBLL

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        rPelapor.DataSource = pelaporBLL.GetData()
        rPelapor.DataBind()
    End Sub
End Class
