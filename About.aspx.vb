﻿
Partial Class About
    Inherits System.Web.UI.Page
    Dim BLL As New AboutMore
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "شرکت نوآوران روباتیک گیلان"
        Try
            lblAbout.Text = BLL.SelectAll().Rows(0)(1).ToString
        Catch ex As Exception

        End Try

    End Sub

End Class
