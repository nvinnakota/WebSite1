using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connStr))
            {
                con.Open();
                using (SqlCommand command = new SqlCommand("usr_login", con))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add(new SqlParameter("@username", txtusername.Text));
                    command.Parameters.Add(new SqlParameter("@password", txtpassword.Text));
                    var usr_id = command.ExecuteScalar();
                    if (usr_id != null)
                    {
                        Session["usr_id"] = usr_id.ToString();
                        Session["UserName"] = txtusername.Text;
                        Response.Redirect("AddCompany.aspx");


                    }
                    else
                    {
                        lblError.Visible = true;
                    }


                }

            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }




    }
}