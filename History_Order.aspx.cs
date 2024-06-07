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
    //SqlConnection c = new SqlConnection("Data Source= User;Initial Catalog=DhabaDB; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                BindRepeater();
            }
            catch (Exception ex)
            {
                lblError.Text = "Something went wrong.";

            }

        }
    }
    private void BindRepeater()
    {
        SqlCommand cmd12 = new SqlCommand("Select * from Bag where UserId='" + Session["User"].ToString() + "' and Status != 'Cancelled' and Status != 'Adding Item' order by Date desc", c);
        SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
        DataTable dt12 = new DataTable();
        da12.Fill(dt12);
        Order.DataSource = dt12;
        Order.DataBind();

    }
    protected void CancelBag(object sender, EventArgs e)
    {
        c.Open();

        string bagId = ((sender as LinkButton).NamingContainer.FindControl("lblBagId") as Label).Text;
        // int bagId = int.Parse(((sender as LinkButton).NamingContainer.FindControl("lblBagId") as Label).Text);
        SqlCommand cmd = new SqlCommand("UPDATE Bag SET Status = 'Cancelled' WHERE BagId = @BagId", c);
        cmd.Parameters.AddWithValue("@BagId", bagId);
        cmd.ExecuteNonQuery();
        BindRepeater();
        c.Close();
    }
    private static DataTable GetData(string query)
    {

        using ( SqlConnection con = new SqlConnection("Data Source=DESKTOP-PGRH8AB; Initial Catalog=BbdDB ; User Id=sa; Password=123$*"))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = query;
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
    protected void OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string bagId = (e.Item.FindControl("hfbagId") as HiddenField).Value;
            string Status = (e.Item.FindControl("hfStatus") as HiddenField).Value;
            Repeater rptOrders = e.Item.FindControl("rptOrders") as Repeater;
            rptOrders.DataSource = GetData(string.Format("SELECT * FROM Cart WHERE BagId='{0}'", bagId));
            rptOrders.DataBind();
            if (Status == "Delivered")
            {
                ((LinkButton)e.Item.FindControl("lnkDelete")).Visible = false;
            }
        }
    }

}