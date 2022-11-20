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
    public partial class mainpage : System.Web.UI.Page
    {
        public string MyNotesToUser { get; private set; }
        public object AddSucMsg { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            MyNotesToUser =  Session["SendMsgToMainPage"]  + " ";
            //Response.Write("Welcome " + Session["UserName"]);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\princ\source\repos\foodProject1\foodProject1\App_Data\userdata.mdf;Integrated Security=True";
            try { 
             
                using (con)
                {
                    con.Open();
                    string command = "Select * from menu";
                    SqlCommand cmd = new SqlCommand(command, con);

                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridView2.DataSource = rdr;
                    GridView2.DataBind();
                    rdr.Close();

                }
            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.Message);
            }

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\princ\source\repos\foodProject1\foodProject1\App_Data\userdata.mdf;Integrated Security=True";
            string query = "INSERT INTO Cart (ProductName,Price,username) VALUES(@pn,@price,@uname)";

            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@pn", GridView2.SelectedRow.Cells[2].Text);
                        cmd.Parameters.AddWithValue("@price", GridView2.SelectedRow.Cells[3].Text);
                        cmd.Parameters.AddWithValue("@uname", Session["UserName"]);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        AddSucMsg = "Add Successful In Cart.";
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Erros : " + ex.Message);
            }
        }

        protected void viewCartBtnCilck(object sender, EventArgs e)
        {

            Response.Redirect("~/viewCartPage.aspx");
        }

        protected void viewProfileBtnClick(object sender, EventArgs e)
        {

            Response.Redirect("~/viewProfilePage.aspx");
        }

        protected void logoutBtnClick(object sender, EventArgs e)
        {
            Session["UserName"] = " ";
            Session["SendMsgToMainPage"] = " ";
            Response.Redirect("~/loginpage.aspx");
        }
    }
}