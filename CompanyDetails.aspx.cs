using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;



public partial class CompanySizes : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            loadCompany();
            loadClothing();
            loadMeasure();
            loadSizetype();
            
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }

    }

    public void loadCompany()
    {
        ddlcompany.Items.Clear();
        using (SqlConnection con= new SqlConnection(connStr))
        {
            con.Open();
            using (SqlCommand com = new SqlCommand("cmp_get", con))
            {
                SqlDataReader rdr=null;
                com.CommandType = CommandType.StoredProcedure;
                rdr = com.ExecuteReader();
                while (rdr.Read())
                {
                    ddlcompany.Items.Add(new ListItem(rdr["cmp_name"].ToString(),rdr["cmp_id"].ToString()));
                }

            }
        }
    }


    public void loadClothing()
    {
        ddlClothingType.Items.Clear();
        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();
            using (SqlCommand com = new SqlCommand("typ_get", con))
            {
                SqlDataReader rdr = null;
                com.CommandType = CommandType.StoredProcedure;
                rdr = com.ExecuteReader();
                while (rdr.Read())
                {
                    ddlClothingType.Items.Add(new ListItem(rdr["typ_clothingtype"].ToString(), rdr["typ_id"].ToString()));
                }

            }
        }
    }

    public void loadSizetype()
    {
        ddlSizetype.Items.Clear();
        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();
            using (SqlCommand com = new SqlCommand("siztyp_get", con))
            {
                SqlDataReader rdr = null;
                com.CommandType = CommandType.StoredProcedure;
                rdr = com.ExecuteReader();
                while (rdr.Read())
                {
                    ddlSizetype.Items.Add(new ListItem(rdr["siztyp_name"].ToString(), rdr["siztyp_id"].ToString()));
                }

            }
        }
    }

    public void loadMeasure()
    {
        ddlMeasuretype.Items.Clear();
        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();
            using (SqlCommand com = new SqlCommand("mes_get", con))
            {
                SqlDataReader rdr = null;
                com.CommandType = CommandType.StoredProcedure;
                rdr = com.ExecuteReader();
                while (rdr.Read())
                {
                    ddlMeasuretype.Items.Add(new ListItem(rdr["mes_measuretype"].ToString(), rdr["mes_id"].ToString()));
                }

            }
        }
    }


    protected void btnclothingadd_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void btnsaveclothing_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();
            using (SqlCommand com = new SqlCommand("typ_add", con))
            {
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.Add("@clothingname", txtclothingname.Text);
                com.Parameters.Add("@sizetype", Convert.ToInt32(ddlSizetype.SelectedValue));
                com.ExecuteNonQuery();
            }
        }
        loadClothing();
        Panel1.Visible = false;
    }


}