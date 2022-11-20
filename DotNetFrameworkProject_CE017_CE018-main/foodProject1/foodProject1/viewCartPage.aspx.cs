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
    public partial class viewCartPage : System.Web.UI.Page
    {
        private List<string> li;

        public object TotalBillNote { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BillingOrder(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\princ\source\repos\foodProject1\foodProject1\App_Data\userdata.mdf;Integrated Security=True";
            try
            {
                using (con)
                {
                    con.Open();
                    string command = "Delete from cart where username='" + Session["Username"] + "'";
                    SqlCommand cmd = new SqlCommand(command, con);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    Session["SendMsgToMainPage"] = Session["Username"] + ", Your Order Coming Soon.. ";
                    Response.Redirect("~/mainpage.aspx");
                    rdr.Close();

                }
            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.Message);
            }
        }

        protected void BackToHomeBtnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/mainpage.aspx");
        }
    }

   
}