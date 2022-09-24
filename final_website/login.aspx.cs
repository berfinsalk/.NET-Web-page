using System;
using System.Data;
using System.Data.Sql;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_website
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();
            if (dt.Rows.Count == 0)
            {
                Label3.Visible = true;
            }
            else
            {
                Session["giriş"] = "ok";
                Response.Redirect("adminpanel.aspx");
            }
        }
    }
}