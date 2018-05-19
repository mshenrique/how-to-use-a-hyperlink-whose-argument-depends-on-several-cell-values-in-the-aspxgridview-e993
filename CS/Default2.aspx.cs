using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!string.IsNullOrEmpty(Request.QueryString["id"]))
            Response.Write("ID = " + Request.QueryString["id"]);
        else if (!string.IsNullOrEmpty(Request.QueryString["category"]))
            Response.Write("Category = " + Request.QueryString["category"]);
    }
}