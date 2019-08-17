
Partial Class assets_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") Is Nothing Then
            Response.Redirect("Beranda.aspx")
        End If
    End Sub
End Class
