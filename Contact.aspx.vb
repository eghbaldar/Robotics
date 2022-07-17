
Partial Class Contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "شرکت نوآوران روباتیک گیلان"
    End Sub

    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Try
            Dim c As New Contact_
            c.InsertConatct(Server.HtmlDecode(name.Text), Server.HtmlDecode(email.Text), Server.HtmlDecode(subject.Text), _
                             Server.HtmlDecode(message.Text), Request.UserHostAddress)
            name.Text = ""
            subject.Text = ""
            message.Text = ""
            email.Text = ""
            lblSuccess.Text = "پیام شما با موفقیت ارسال گردید"
        Catch ex As Exception

        End Try
    End Sub

End Class
