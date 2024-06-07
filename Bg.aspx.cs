using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Account_Login : System.Web.UI.Page
{
    //SqlConnection c = new SqlConnection("Data Source= 199.79.62.22;Initial Catalog=DhabaDB; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user1"] != null)
            {
                Response.Redirect("~/Bangalore/Dashboard.aspx");

            }

        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("select * from AdminLogin where UserId='" + txtUserId.Text + "'", c);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr["Password"].ToString() == txtPassword.Text)
                {


                    Session["user1"] = txtUserId.Text;
                    Response.Redirect("~/Bangalore/Dashboard.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    lblError.Text = "Invalid User Id or Password entered";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);

                }
            }

            else
            {
                lblError.Text = "Invalid User Id or Password entered";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            c.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}