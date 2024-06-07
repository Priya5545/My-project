using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class Account_charts : System.Web.UI.Page
{
   // SqlConnection c = new SqlConnection("Data Source= 199.79.62.22;Initial Catalog=DhabaDB; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                BindRepeater();
                

            }
            catch(Exception ex)
            {
                lblError.Text = "Something went wrong.";
                
            
            }
        }
    }
    private void BindRepeater()
    {
        c.Open();
        SqlCommand cmd12 = new SqlCommand("Select * from Reservation  where UserId='" + Session["user"].ToString() + "' and Status='Reserved' order by Reserved_on desc", c);
        SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
        DataTable dt12 = new DataTable();
        da12.Fill(dt12);
        Order.DataSource = dt12;
        Order.DataBind();
        c.Close();
    }
    protected void CancelBag(object sender, EventArgs e)
    {
        c.Open();
        string Id = ((sender as LinkButton).NamingContainer.FindControl("lblId") as Label).Text;
        // int bagId = int.Parse(((sender as LinkButton).NamingContainer.FindControl("lblBagId") as Label).Text);
        SqlCommand cmd = new SqlCommand("UPDATE Reservation SET Status = 'Cancelled' WHERE Id = @Id", c);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();
        c.Close();
        BindRepeater();
       
    }
}