
Partial Class CodeDemo
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        CurrentDateTime.Text = "It is now " & DateTime.Now
    End Sub

    Protected Sub SearchButton_Click(sender As Object, e As System.EventArgs) Handles SearchButton.Click
        Response.Redirect("http://www.google.com/search?q=" & SearchTerm.Text)

    End Sub
End Class

