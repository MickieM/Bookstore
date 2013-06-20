
Partial Class MultipleUpdatePanels
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        CurrentTime.Text = DateTime.Now
        CurrentTimeAjax1.Text = DateTime.Now
        CurrentTimeAjax2.Text = DateTime.Now

    End Sub
End Class
