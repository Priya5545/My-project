using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user"] == null)
            {

                name.Text = "";
                Response.Redirect("~/Login.aspx");
            }
            else
            {

                name.Text = Session["user"].ToString();
            }
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {

        Session["user"] = null;
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/Login.aspx");


    }
}
