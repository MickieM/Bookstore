
Partial Class UpdateProgress
    Inherits System.Web.UI.Page

    Protected Sub SlowOperationButton_Click(sender As Object, e As System.EventArgs) Handles SlowOperationButton.Click
        'Pause for 5 seconds
        System.Threading.Thread.Sleep(5000)

        StatusMessage.Text = "Slow Operation complete! The current time is: " & DateTime.Now

    End Sub
End Class
