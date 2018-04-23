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
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) {
    }

    protected void grid_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e) {
    }

    protected string GetRowValue(GridViewDataItemTemplateContainer container) {
        return container.Grid.GetRowValuesByKeyValue(container.KeyValue, "CategoryName").ToString();
    }
}