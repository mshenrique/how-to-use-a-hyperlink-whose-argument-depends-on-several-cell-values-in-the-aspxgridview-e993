<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default"  MasterPageFile="~/MasterPage.master"%>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="CC" runat="Server">
    <dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="AccessDataSource2" KeyFieldName="CategoryID" PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="False">
        <Columns>
            <dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True">
                <EditFormSettings Visible="False" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="CategoryName">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="Description">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="ASPxHyperlink in DataItemTemplate">
                <DataItemTemplate>
                    <dxe:ASPxHyperLink runat="server" ID="keyFieldLink" OnInit="keyFieldLink_Init"></dxe:ASPxHyperLink>
                </DataItemTemplate>
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="The 'a' tag in DataItemTemplate">
                <DataItemTemplate>
                    <a id="clickElement" target="_blank" href="Default2.aspx?category=<%#GetRowValue(Container)%>"><%#"Show New Form, CategoryName = " & Eval("CategoryName").ToString()%></a>
                </DataItemTemplate>
            </dxwgv:GridViewDataTextColumn>
        </Columns>
    </dxwgv:ASPxGridView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [Categories]">
    </asp:AccessDataSource>
</asp:Content>