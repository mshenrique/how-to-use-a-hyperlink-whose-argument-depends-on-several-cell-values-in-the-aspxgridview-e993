using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;

public partial class _Default : System.Web.UI.Page
{

    protected string GetRowValue(GridViewDataItemTemplateContainer container) {
        return container.Grid.GetRowValuesByKeyValue(container.KeyValue, "CategoryName").ToString();
    }

    protected void keyFieldLink_Init(object sender, EventArgs e) {
        ASPxHyperLink link = sender as ASPxHyperLink;
        GridViewDataItemTemplateContainer container = link.NamingContainer as GridViewDataItemTemplateContainer;
        link.Text = "Show New Form, Key Field = " + container.KeyValue;
        link.Target = "_blank";
        link.NavigateUrl = "Default2.aspx?id=" + container.KeyValue;
    }
}