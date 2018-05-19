Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If Not String.IsNullOrEmpty(Request.QueryString("id")) Then
            Response.Write("ID = " & Request.QueryString("id"))
        ElseIf Not String.IsNullOrEmpty(Request.QueryString("category")) Then
            Response.Write("Category = " & Request.QueryString("category"))
        End If
    End Sub
End Class