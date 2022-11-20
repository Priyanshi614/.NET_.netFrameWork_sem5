using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace foodProject1
{
    public partial class viewProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("Welcome " + Session["UserName"]);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\princ\source\repos\foodProject1\foodProject1\App_Data\userdata.mdf;Integrated Security=True";
            try
            {

                using (con)
                {
                    con.Open();
                    string command = "Select * from userdata where  Name='" + Session["Username"] + "'";
                    SqlCommand cmd = new SqlCommand(command, con);

                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridViewProfile.DataSource = rdr;
                    GridViewProfile.DataBind();
                    rdr.Close();

                }
            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.Message);
            }

        }

        protected void viewCartBtnCilck(object sender, EventArgs e)
        {
            Response.Redirect("~/viewCartPage.aspx");
        }

        protected void BackToHomeBtnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/mainpage.aspx");
        }
    }
}