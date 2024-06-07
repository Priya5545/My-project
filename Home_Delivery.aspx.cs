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
            BindRepeater();
            GridView2.Visible = false;

            string currentMonth = DateTime.Now.ToString("MM");
            string currentYear = DateTime.Now.Year.ToString();
            string currentDate = System.DateTime.Today.ToString("dd");

            lblDate.Text = currentYear + "/" + currentMonth + "/" + currentDate;

            try
            {
                c.Open();
                SqlCommand cmd0 = new SqlCommand("Select * from Bag where Date='" + lblDate.Text + "' and UserId='" + Session["user"].ToString() + "' and Status='Adding Item'", c);
                SqlDataReader dr0 = cmd0.ExecuteReader();
                if (dr0.Read())
                {

                    lblBagId.Text = dr0["BagId"].ToString();


                    gvbind();

                    ddlCategory.Items.Add(new ListItem("--Select Category--", ""));
                    ddlCategory.AppendDataBoundItems = true;
                    SqlDataAdapter adp = new SqlDataAdapter("select Name from Category", c);
                    DataSet ds = new DataSet();
                    adp.Fill(ds);

                    ddlCategory.DataSource = ds;
                    ddlCategory.DataTextField = "Name";
                    ddlCategory.DataValueField = "Name";
                    ddlCategory.DataBind();

                }
                dr0.Close();


                DataTable dt = new DataTable();
                string fullname = string.Empty;
                string address = string.Empty;
                string area = string.Empty;
                string landmark = string.Empty;
                string city = string.Empty;
                string state = string.Empty;
                string pincode = string.Empty;
                string FullAddress = string.Empty;
                string sqlStatement = "Select AddressBook.FullName,AddressBook.Address,AddressBook.Area,AddressBook.Landmark,AddressBook.City,AddressBook.State,AddressBook.Pincode from AddressBook where  AddressBook.UserName='" + Session["user"].ToString() + "' ";
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
                sqlDa.Fill(dt);
                ddlAddress.Items.Clear();
                ddlAddress.Items.Add(new ListItem("--Select an address--", ""));
                if (dt.Rows.Count > 0)
                {

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        fullname = dt.Rows[i]["FullName"].ToString();
                        address = dt.Rows[i]["Address"].ToString();
                        area = dt.Rows[i]["Area"].ToString();
                        landmark = dt.Rows[i]["Landmark"].ToString();
                        city = dt.Rows[i]["City"].ToString();
                        state = dt.Rows[i]["State"].ToString();
                        pincode = dt.Rows[i]["Pincode"].ToString();
                        FullAddress = fullname + ", " + address + ", " + area + ", " + landmark + ", " + city + ", " + state + ", " + pincode;

                        ddlAddress.DataBind();
                        ddlAddress.Items.Add(new ListItem(FullAddress, FullAddress));
                    }
                }

                c.Close();
            }
            catch (Exception ex)
            {
                lblError.Text = ex.StackTrace;
            }

        }

    }
    protected void gvbind()
    {
        try
        {
            c.Close();
            c.Open();
            SqlCommand cmd = new SqlCommand("Select * from Cart where UserName='" + Session["user"].ToString() + "' and BagId='" + lblBagId.Text + "'", c);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            SqlCommand cmd2 = new SqlCommand("Select Category,FoodName, Size, Price, Quantity, TotalAmount from Cart where UserName='" + Session["user"].ToString() + "' and BagId='" + lblBagId.Text + "'", c);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd2);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView2.DataSource = ds1;
            GridView2.DataBind();

            SqlCommand cmd1 = new SqlCommand("Select Sum(TotalAmount) as summ from Cart  where UserName='" + Session["user"].ToString() + "' and BagId='" + lblBagId.Text + "'", c);
            SqlDataReader drr = cmd1.ExecuteReader();
            if (drr.Read())
            {
                lblGrandTotal.Text = drr["summ"].ToString();

            }
            drr.Close();
            c.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = ex.StackTrace;
        }
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {


        ddlFood.Items.Clear();
        ddlFood.Items.Add(new ListItem("--Select Food--", ""));
        ddlFood.AppendDataBoundItems = true;

        SqlCommand cmd = new SqlCommand("select Name from Menu where Category='" + ddlCategory.SelectedValue + "'", c);
        try
        {
            c.Open();
            ddlFood.DataSource = cmd.ExecuteReader();
            ddlFood.DataTextField = "Name";
            ddlFood.DataValueField = "Name";
            ddlFood.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong.";
        }
        finally
        {
            c.Close();
            c.Dispose();
        }

        if ((!string.IsNullOrEmpty(ddlCategory.SelectedValue)) && (!string.IsNullOrEmpty(ddlFood.SelectedValue)) && (!string.IsNullOrEmpty(ddlSize.SelectedValue)) && (!string.IsNullOrEmpty(txtQuantity.Text)) && (!string.IsNullOrEmpty(lblPriceTag.Text)))
        {
            lblTotalAmount.Text = (Convert.ToInt32(lblPriceTag.Text) * Convert.ToInt32(txtQuantity.Text)).ToString();
        }
        ddlSize.Items.Clear();
        lblPriceTag.Text = "";
        lblTotalAmount.Text = "";
        txtQuantity.Text = "";

    }
    protected void ddlFood_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.Open();
        lblPriceTag.Text = "";
        lblTotalAmount.Text = "";
        txtQuantity.Text = "";
        SqlCommand cmd1 = new SqlCommand("Select Availability from Menu where Name='" + ddlFood.SelectedValue + "'", c);
        SqlDataReader drr = cmd1.ExecuteReader();
        if (drr.Read())
        {
            if (drr["Availability"].ToString() == "No")
            {
                ddlSize.Items.Clear();
                ddlSize.Items.Add(new ListItem("--Select Size--", ""));
                ddlSize.Items.Add(new ListItem("Regular", "Regular"));
                ddlSize.AppendDataBoundItems = true;
            }
            else
            {
                ddlSize.Items.Clear();
                ddlSize.Items.Add(new ListItem("--Select Size--", ""));
                ddlSize.Items.Add(new ListItem("Small", "Small"));
                ddlSize.Items.Add(new ListItem("Regular", "Regular"));
                ddlSize.AppendDataBoundItems = true;
            }


        }
        drr.Close();


        if ((!string.IsNullOrEmpty(ddlCategory.SelectedValue)) && (!string.IsNullOrEmpty(ddlFood.SelectedValue)) && (!string.IsNullOrEmpty(ddlSize.SelectedValue)) && (!string.IsNullOrEmpty(txtQuantity.Text)) && (!string.IsNullOrEmpty(lblPriceTag.Text)))
        {
            lblTotalAmount.Text = (Convert.ToInt32(lblPriceTag.Text) * Convert.ToInt32(txtQuantity.Text)).ToString();
        }
        c.Close();
    }
    protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblTotalAmount.Text = "";
        txtQuantity.Text = "";
        if (ddlSize.SelectedValue == "Small")
        {
            SqlCommand cmd = new SqlCommand("select Small_Price from Menu where Name = @Name", c);
            cmd.Parameters.AddWithValue("@Name", ddlFood.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select Small_Price from Menu where Name = @Name";
            cmd.Connection = c;
            try
            {
                c.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    lblPriceTag.Text = sdr["Small_Price"].ToString();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                c.Close();
                c.Dispose();
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("select Regular_Price from Menu where Name = @Name", c);
            cmd.Parameters.AddWithValue("@Name", ddlFood.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select Regular_Price from Menu where Name = @Name";
            cmd.Connection = c;
            try
            {
                c.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    lblPriceTag.Text = sdr["Regular_Price"].ToString();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                c.Close();
                c.Dispose();
            }
        }
        if ((!string.IsNullOrEmpty(ddlCategory.SelectedValue)) && (!string.IsNullOrEmpty(ddlFood.SelectedValue)) && (!string.IsNullOrEmpty(ddlSize.SelectedValue)) && (!string.IsNullOrEmpty(txtQuantity.Text)) && (!string.IsNullOrEmpty(lblPriceTag.Text)))
        {
            lblTotalAmount.Text = (Convert.ToInt32(lblPriceTag.Text) * Convert.ToInt32(txtQuantity.Text)).ToString();
        }
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {
        if ((!string.IsNullOrEmpty(ddlCategory.SelectedValue)) && (!string.IsNullOrEmpty(ddlFood.SelectedValue)) && (!string.IsNullOrEmpty(ddlSize.SelectedValue)) && (!string.IsNullOrEmpty(txtQuantity.Text)) && (!string.IsNullOrEmpty(lblPriceTag.Text)))
        {
            lblTotalAmount.Text = (Convert.ToInt32(lblPriceTag.Text) * Convert.ToInt32(txtQuantity.Text)).ToString();
        }
    }
    protected void btnAddProducts_Click(object sender, EventArgs e)
    {
        c.Open();
        String GUID = Guid.NewGuid().ToString();
        SqlCommand cmd = new SqlCommand("insert into Cart values('" + ddlCategory.SelectedValue + "', '" + ddlFood.SelectedValue + "', '" + ddlSize.Text + "','" + lblPriceTag.Text + "','" + txtQuantity.Text + "','" + lblTotalAmount.Text + "', '" + Session["user"].ToString() + "','" + GUID + "','" + lblDate.Text + "','" + lblBagId.Text + "')", c);
        cmd.ExecuteNonQuery();
        lblError.Text = "1 food item was added to your bag.";
        c.Close();

        gvbind();
        lblPriceTag.Text = "";
        lblTotalAmount.Text = "";
        txtQuantity.Text = "";

        ddlFood.Items.Clear();
        ddlFood.Items.Add(new ListItem("--Select Food--", ""));
        ddlFood.AppendDataBoundItems = true;

        SqlCommand cmd54 = new SqlCommand("select Name from Menu where Category='" + ddlCategory.SelectedValue + "'", c);
        try
        {
            c.Open();
            ddlFood.DataSource = cmd54.ExecuteReader();
            ddlFood.DataTextField = "Name";
            ddlFood.DataValueField = "Name";
            ddlFood.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong.";
        }
        finally
        {
            c.Close();
            c.Dispose();
        }

        if ((!string.IsNullOrEmpty(ddlCategory.SelectedValue)) && (!string.IsNullOrEmpty(ddlFood.SelectedValue)) && (!string.IsNullOrEmpty(ddlSize.SelectedValue)) && (!string.IsNullOrEmpty(txtQuantity.Text)) && (!string.IsNullOrEmpty(lblPriceTag.Text)))
        {
            lblTotalAmount.Text = (Convert.ToInt32(lblPriceTag.Text) * Convert.ToInt32(txtQuantity.Text)).ToString();
        }
        ddlSize.Items.Clear();
        lblPriceTag.Text = "";
        lblTotalAmount.Text = "";
        txtQuantity.Text = "";


    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        c.Open();
        SqlCommand cmd = new SqlCommand("delete FROM Cart where Id='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'", c);
        cmd.ExecuteNonQuery();
        c.Close();
        gvbind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gvbind();
    }
    protected void btnOrder_Click(object sender, EventArgs e)
    {
        if (lblGrandTotal.Text != "0")
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Bag SET Status = 'Order Placed', TotalSum='" + lblGrandTotal.Text + "', Address='" + ddlAddress.SelectedValue + "' WHERE BagId = '" + lblBagId.Text + "' and UserId='" + Session["user"].ToString() + "'", c);
            cmd.ExecuteNonQuery();
            c.Close();
            lblOrderMsg.Text = "Your order has been placed successfully. ";
        }
        else
        {
            lblError.Text = "Your bag is empty. Please add the items to the bag.";
        }
        Panel1.Visible = false;
        Panel2.Visible = false;
        btnOrder.Visible = false;
        GridView1.Visible = false;
        GridView2.Visible = true;
        ddlAddress.Enabled = false;

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

        using (SqlConnection con = new SqlConnection("Data Source= DESKTOP-U0CJ06S\\SQLEXPRESS; Initial Catalog=BdbDB ; User Id=sa; Password=123"))
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