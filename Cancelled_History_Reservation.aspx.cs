﻿using System;
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

                c.Open();
                SqlCommand cmd = new SqlCommand("Select * from Reservation  where UserId='" + Session["user"].ToString() + "' and Status='Cancelled' order by Reserved_on desc", c);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Order.DataSource = dt;
                Order.DataBind();

            }
            catch(Exception ex)
            {
                lblError.Text = "Something went wrong.";
                
            
            }
        }
    }
}