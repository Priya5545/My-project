using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
   // SqlConnection c = new SqlConnection("Data Source= 199.79.62.22; Initial Catalog=DhabaDB ; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Register_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtPassword.Text == txtCPassword.Text)
            {
                c.Open();
                SqlCommand cmd = new SqlCommand("insert into Login values('" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','" + txtMobile.Text + "')", c);
                cmd.ExecuteNonQuery();
                txtUserName.Text = "";
                txtPassword.Text = "";
                txtMobile.Text = "";
                txtEmail.Text = "";
                txtCPassword.Text = "";

                c.Close();
                lblError.Text = "Thank you! You were registered with us.";
            }
            else
            {
                lblError.Text = "Two passwords you typed do not match.";

            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong.";
        }

    }

}