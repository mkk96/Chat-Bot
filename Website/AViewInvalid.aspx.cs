using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AViewInvalid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AInv"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Entry Deleted Successfully');", true);
            Session["AInv"] = "No";
        }
        SqlDataAdapter da = new SqlDataAdapter("Select * from Invalid Order By Date,Time Desc", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();

    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            string i1 = Convert.ToString(e.CommandArgument.ToString());
            SqlCommand cmd = new SqlCommand("Delete from Invalid Where ID = '"+i1+"'",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Session["AInv"] = "Yes";
            Response.Redirect("AViewInvalid.aspx");
        }
    }
}