using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncompanyadd_Click(object sender, EventArgs e)
    {
        try
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connStr))
            {
                con.Open();
               
                using (SqlCommand command = new SqlCommand("cmp_Add", con))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add(new SqlParameter("@companyname", txtcompanyname.Text));
                    command.Parameters.AddWithValue("@targetmin", string.IsNullOrEmpty(txttargetmin.Text) ? (object)DBNull.Value : Convert.ToInt32(txttargetmin.Text));
                   command.Parameters.Add(new SqlParameter("@targetmax", string.IsNullOrEmpty(txttargetmax.Text) ? (object)DBNull.Value : Convert.ToInt32(txttargetmax.Text)));
                    command.ExecuteNonQuery();
                }

            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

}

