using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class Account_blank_page : System.Web.UI.Page
{
    //SqlConnection c = new SqlConnection("Data Source= 199.79.62.22;Initial Catalog=DhabaDB; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            try
            {
                string currentMonth = DateTime.Now.ToString("MM");
                string currentYear = DateTime.Now.Year.ToString();
                string currentDate = System.DateTime.Today.ToString("dd");

                lblDate.Text = currentYear + "/" + currentMonth + "/" + currentDate;
                
                Panel1.Visible = false;
                Panel2.Visible = false;
                c.Open();
                SqlCommand cmd = new SqlCommand("Select * from Bag where Date='" + lblDate.Text + "' and UserId='" + Session["user"].ToString() + "' and Status='Adding Item'", c);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Panel2.Visible = true;
                    lblViewBagId.Text = dr["BagId"].ToString();
                   
                }
                else
                {
                    dr.Close();
                    Panel1.Visible = true;
                    String GUID = Guid.NewGuid().ToString();
                    lblBagId.Text = GUID;

                   
                }


            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

        }

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        c.Open();

        SqlCommand cmd = new SqlCommand("insert into Bag values('" + lblBagId.Text + "', '" + lblDate.Text + "', '','" + Session["user"].ToString() + "','Adding Item','0')", c);
        cmd.ExecuteNonQuery();

        Panel1.Visible = false;
        SqlCommand cmd1 = new SqlCommand("Select * from Bag where Date='" + lblDate.Text + "' and UserId='" + Session["user"].ToString() + "' and Status='Adding Item'", c);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            Panel2.Visible = true;
            lblViewBagId.Text = dr["BagId"].ToString();
            
            lblError.Text = "Hi";
        }
        c.Close();
        lblError.Text = "1 bag added.";
    }
    protected void btnProceed_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/Home_Delivery.aspx");
    }
}