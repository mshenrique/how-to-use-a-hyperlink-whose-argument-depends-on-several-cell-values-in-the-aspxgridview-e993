<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default"  MasterPageFile="~/MasterPage.master"%>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1, Version=8.1.8.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1, Version=8.1.8.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="CC" runat="Server">
	<dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="AccessDataSource2" KeyFieldName="CategoryID" PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="False" OnRowUpdating="grid_RowUpdating">
		<SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True"/>
		<Settings  ShowGroupPanel="True" />
		<Columns>
			<dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
				<EditFormSettings Visible="False" />
			</dxwgv:GridViewDataTextColumn>
			<dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
			</dxwgv:GridViewDataTextColumn>
			<dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
			</dxwgv:GridViewDataTextColumn>
			<dxwgv:GridViewDataTextColumn VisibleIndex="3" Caption="Simple Hyperlink Column">
				<DataItemTemplate>
					<a id="clickElement" target="_blank" href="Default2.aspx?id=<%#Container.KeyValue%>"><%#"Show New Form, Key Field = " & Eval("CategoryID").ToString()%></a>
				</DataItemTemplate>
			</dxwgv:GridViewDataTextColumn>
			<dxwgv:GridViewDataTextColumn VisibleIndex="4" Caption="Complex Hyperlink Column">
				<DataItemTemplate>
					<a id="clickElement" target="_blank" href="Default2.aspx?id=<%#GetRowValue(Container)%>"><%#"Show New Form, CategoryName = " & Eval("CategoryName").ToString()%></a>
				</DataItemTemplate>
			</dxwgv:GridViewDataTextColumn>
		</Columns>
	</dxwgv:ASPxGridView>
		<asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/nwind.mdb"
		SelectCommand="SELECT * FROM [Categories]">
	</asp:AccessDataSource>
</asp:Content>