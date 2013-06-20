
Partial Class AjaxSimple
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        CurrentTime.Text = DateTime.Now
        CurrentTimeAjax.Text = DateTime.Now

    End Sub
End Class
