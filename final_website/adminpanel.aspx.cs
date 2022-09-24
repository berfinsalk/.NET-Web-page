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
    public partial class adminpanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["giriş"] != "ok")
            {
                Response.Redirect("login.aspx");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
                try
                {


                    FileUpload1.SaveAs(Server.MapPath("images/") + FileUpload1.FileName);
                    Session["resim"] = "images/" + FileUpload1.FileName;
                    Image1.ImageUrl = "images/" + FileUpload1.FileName;



                }
                catch (Exception ex)
                {

                }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            tablodan_cek();
        }
        protected void tablodan_cek()
        {
            DataView dv = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();

            TextBox1.Text = dt.Rows[0][0].ToString();
            TextArea1.Value = dt.Rows[0][1].ToString();
            Image1.ImageUrl = dt.Rows[0][2].ToString();
            Session["resim"]= dt.Rows[0][2].ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tablodan_cek();
        }
    }
}