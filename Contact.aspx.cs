using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Register_Click(object sender, EventArgs e)
    {
        try
        {
            
                c.Open();
                SqlCommand cmd = new SqlCommand("insert into ContactUs values('" + txtUserName.Text + "','" + txtEmail.Text + "','" + txtMobile.Text + "', '"+txtMessage.Text+"')", c);
                cmd.ExecuteNonQuery();
                txtUserName.Text = "";
                txtMessage.Text = "";
                txtMobile.Text = "";
                txtEmail.Text = "";

                c.Close();
                lblError.Text = "Thank you !";
           
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong.";
        }

    }

}