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
    public partial class signuppage : System.Web.UI.Page
    {
        public string checkpass { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            checkpass = " ";
        }

        protected void done(object sender, EventArgs e)
        {
            string phonenumber = mobilenumberid.Text ;
            string username1 = usernameid.Text;
            string confirmpassword1 = confrimpasswordid.Text;
            string password1 = passwordid.Text;
            string emailaddress = emailaddressid.Text;
            string residentaddress = ResidentAddressid.Text;
            
            if(username1 == null)
            {
                return;
            }    
            
            if (confirmpassword1 != password1)
            {
                checkpass = "Confirm Password & Password are not same !!";
               // Response.Write("Confirm Password & Password are not same !!");
                return;
            }

            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\princ\source\repos\foodProject1\foodProject1\App_Data\userdata.mdf;Integrated Security=True";
            string query = "INSERT INTO userdata (Name , MobileNumber, EmailAddress, ResidentAddress , Password ) " +
                        "VALUES(@name , @pno , @email , @resident , @pass)";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@name", username1);
                        cmd.Parameters.AddWithValue("@pno", phonenumber);
                        cmd.Parameters.AddWithValue("@email", emailaddress);
                        cmd.Parameters.AddWithValue("@resident", residentaddress);
                        cmd.Parameters.AddWithValue("@pass", password1);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery(); 
                        con.Close();
                        if(username1 == null)
                        {

                        }
                        else
                        {
                            Session["UserName"] = username1;
                            Session["SendMsgToMainPage"] = "Welcome " + username1;
                            Response.Redirect("~/mainpage.aspx");
                        }
                      

                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.Message);
            }
        }
    }
}