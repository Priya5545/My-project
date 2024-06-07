using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Account_charts : System.Web.UI.Page
{

    //SqlConnection c = new SqlConnection("Data Source= 199.79.62.22;Initial Catalog=DhabaDB; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            if (!IsPostBack)
            {
                c.Open();
                SqlDataAdapter adp = new SqlDataAdapter("Select * from Place ", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);

                ddlArea.DataSource = ds;
                ddlArea.DataTextField = "AreaName";
                ddlArea.DataValueField = "AreaName";
                ddlArea.DataBind();
                ddlArea.Items.Insert(0, new ListItem("--Select Area--", " "));

                c.Close();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.StackTrace;
        }
    }
    protected void btnAddAddress_Click(object sender, EventArgs e)
    {
        Guid GUID = Guid.NewGuid();
        try
        {

            c.Open();
            SqlCommand cmd = new SqlCommand("insert into AddressBook values('" + Session["user"].ToString() + "','" + txtFullName.Text + "','" + txtMobile.Text + "','" + txtPincode.Text + "','" + txtAddress.Text + "', '" + ddlArea.SelectedValue + "', '" + txtLandmark.Text + "', 'Bokaro', 'Jharkhand', '" + GUID + "')", c);
            cmd.ExecuteNonQuery();
            txtAddress.Text = "";
            txtFullName.Text = "";
            txtLandmark.Text = "";
            txtMobile.Text = "";
            txtPincode.Text = "";
            c.Close();
            lblError.Text = "A new address was added to your Address Book.";
        }
        catch(Exception ex)
        {
            lblError.Text = ex.Message;

        }
    }


}