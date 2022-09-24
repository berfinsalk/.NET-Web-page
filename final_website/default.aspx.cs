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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();

            Label1.Text = dt.Rows[0][0].ToString();
            icerik.InnerHtml = dt.Rows[0][1].ToString();
            Image1.ImageUrl = dt.Rows[0][2].ToString();

        }
    }
}