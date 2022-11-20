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
    public partial class loginpage : System.Web.UI.Page
    {
        public string resultMsg { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            resultMsg = " ";
        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            string username1 = usernameid.Text;
            string password1 = passwordid.Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\princ\source\repos\foodProject1\foodProject1\App_Data\userdata.mdf;Integrated Security=True";
            try
            {
                using (con)
                {
                    string command = "Select * from userdata where Name=@username1 and Password=@password1";
                    SqlCommand cmd = new SqlCommand(command, con);
                    cmd.Parameters.AddWithValue("@username1", usernameid.Text);
                    cmd.Parameters.AddWithValue("@password1", passwordid.Text);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        Session["UserName"] = username1;
                        Session["SendMsgToMainPage"] = "Welcome " + username1;
                        //rdr.
                        Response.Redirect("~/mainpage.aspx");

                    }
                    // Response.Write("DONE");
                    else {
                        resultMsg = "UserName or Password wrong !!";
                    }
                       // Response.Write();
                    //result.Text = "done ";
                    con.Close();


                }
            }
            catch(Exception ex)
            {
                Response.Write("Error : " + ex.Message);
            }
               // new SqlDataSourceCommandEventArgs(command, )
        }
    }
}