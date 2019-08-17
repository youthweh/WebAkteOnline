
Partial Class admin_Logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") IsNot Nothing Then
            Session.Remove("Admin")
        End If
        Response.Redirect("Login.aspx")
    End Sub
End Class
