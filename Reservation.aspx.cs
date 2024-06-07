using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Account_blank_page : System.Web.UI.Page
{
   // SqlConnection c = new SqlConnection("Data Source= 199.79.62.22;Initial Catalog=DhabaDB; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");

    protected void Page_Load(object sender, EventArgs e)
    {
        string currentMonth = DateTime.Now.ToString("MM");
        string currentYear = DateTime.Now.Year.ToString();
        string currentDate = System.DateTime.Today.ToString("dd");

        lblDate.Text = currentYear + "/" + currentMonth + "/" + currentDate;
        
    }

    protected void Reservation_Click(object sender, EventArgs e)
    {
        try
        {
           
            c.Open();
            String GUID = Guid.NewGuid().ToString();
            SqlCommand cmd = new SqlCommand("insert into Reservation values('" + lblDate.Text + "','" + Date.Text + "','" + ddlTime.SelectedValue + "','" + txtMale.Text + "','" + txtFemale.Text + "', '" + Session["user"] + "', '" + GUID + "','Reserved')", c);
            cmd.ExecuteNonQuery();
            Date.Text = "";
            txtMale.Text = "";
            txtFemale.Text = "";

            c.Close();
            lblError.Text = "Thank you! Your table has been reserved.";

        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Date.Text = Calendar1.SelectedDate.Date.ToShortDateString();
     

        Calendar1.Visible = false;
    }
}