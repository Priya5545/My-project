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

public partial class Home : System.Web.UI.Page
{
    //SqlConnection c = new SqlConnection("Data Source= 199.79.62.22; Initial Catalog=DhabaDB ; User Id=DhabaSA; Password=Abc123$*");
    SqlConnection c = new SqlConnection("Data Source=DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BbdDB ; User Id=sa; Password=123");
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
        SqlCommand cmd12 = new SqlCommand("Select top 5 * from Category ", c);
        SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
        DataTable dt12 = new DataTable();
        //da12.Fill(dt12);
       // Order.DataSource = dt12;
        //Order.DataBind();
    }

}