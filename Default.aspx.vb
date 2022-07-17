
Partial Class _Default
    Inherits System.Web.UI.Page

    Dim c As New AboutUS

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblAboutCompany.Text = c.SelectAll().Rows(0)(1).ToString
    End Sub

End Class
