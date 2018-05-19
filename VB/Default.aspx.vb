Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web
Imports System.IO
Imports System.Drawing
Imports System.Drawing.Imaging
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Function GetRowValue(ByVal container As GridViewDataItemTemplateContainer) As String
        Return container.Grid.GetRowValuesByKeyValue(container.KeyValue, "CategoryName").ToString()
    End Function

    Protected Sub keyFieldLink_Init(ByVal sender As Object, ByVal e As EventArgs)
        Dim link As ASPxHyperLink = TryCast(sender, ASPxHyperLink)
        Dim container As GridViewDataItemTemplateContainer = TryCast(link.NamingContainer, GridViewDataItemTemplateContainer)
        link.Text = "Show New Form, Key Field = " & container.KeyValue
        link.Target = "_blank"
        link.NavigateUrl = "Default2.aspx?id=" & container.KeyValue
    End Sub
End Class