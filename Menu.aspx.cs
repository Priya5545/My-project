using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class FoodCollection : System.Web.UI.Page
{
    //SqlConnection c = new SqlConnection("Data Source= 199.79.62.22; Initial Catalog=DhabaDB ; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //try {
            BindRepeater();
            //}
            //catch(Exception ex)
            //{
            //    lblError.Text = "Something went wrong.";

            //}

        }
    }

   
    private void BindRepeater()
    {
        SqlCommand cmd12 = new SqlCommand("Select * from Category ", c);
        SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
        DataTable dt12 = new DataTable();
        da12.Fill(dt12);
        Order.DataSource = dt12;
        Order.DataBind();
    }

    private static DataTable GetData(string query)
    {

        using (SqlConnection con =  new SqlConnection("Data Source=DESKTOP-PGRH8AB; Initial Catalog=BbdDB ; User Id=sa; Password=123$*"))
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
            string Category = (e.Item.FindControl("hfName") as HiddenField).Value;
            Repeater rptOrders = e.Item.FindControl("rptOrders") as Repeater;
            rptOrders.DataSource = GetData(string.Format("SELECT * FROM Menu WHERE Category='{0}'", Category));
            rptOrders.DataBind();
        }
    }


   
}