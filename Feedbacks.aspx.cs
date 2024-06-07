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
                ddlRate.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                txtComment.Visible = false;
                btnSubmit.Visible = false;
                c.Open();
                DataTable dt = new DataTable();
                string id = string.Empty;
                string date = string.Empty;
                string newName = string.Empty;

                string sqlStatement = "Select * from Bag where Status='Delivered' and Bag.BagId NOT IN(SELECT BagId from Feedbacks)";
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
                sqlDa.Fill(dt);
                ddlBagId.Items.Clear();
                ddlBagId.Items.Add(new ListItem("--Select Bag Id--", ""));
                if (dt.Rows.Count > 0)
                {

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        id = dt.Rows[i]["BagId"].ToString();
                        date = dt.Rows[i]["Date"].ToString();
                        newName = id + "       --->  " + date;
                     
                        ddlBagId.DataBind();
                        ddlBagId.Items.Add(new ListItem(newName, id));

                    }
                }
                c.Close();
            }
            catch(Exception ex1)
            {
                lblError.Text = ex1.Message;
            }
        }
    }
    protected void ddlBagId_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlRate.Visible = true;
        txtComment.Visible = true;
        Label1.Visible = true;
        Label2.Visible = true;
        btnSubmit.Visible = true;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("insert into Feedbacks values('" + Session["user"].ToString() + "','" + ddlBagId.Text + "','" + txtComment.Text + "','" + ddlRate.SelectedValue + "')", c);
            cmd.ExecuteNonQuery();

            c.Close();
            lblError.Text = "Thank you for submitting our feedback form.";
            txtComment.Text = "";
        }
        catch(Exception  ex) {
            lblError.Text = ex.Message;
        }   
    }
}