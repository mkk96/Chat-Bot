using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddKeywords : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Keyword Added');", true);
            Session["Add"] = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into Question Values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+DropDownList1.Text+"','" + TextBox6.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["Add"] = "Data";
        Response.Redirect("AddKeywords.aspx");
    }
}