using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddStud : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Student Details Added');", true);
            Session["Add"] = "";
        }
        string sql = "select distinct Course from Course";
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        int count = ds.Tables[0].Rows.Count;
        for (int i = 0; i < count; i++)
        {
            DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        string sql1 = "select distinct Div from Course";
        SqlDataAdapter sda1 = new SqlDataAdapter(sql1, con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);

        int count1 = ds1.Tables[0].Rows.Count;
        for (int i = 0; i < count1; i++)
        {
            DropDownList2.Items.Add(ds1.Tables[0].Rows[i][0].ToString());
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "--Select--" && DropDownList2.Text != "--Select--")
        {
            SqlCommand cmd = new SqlCommand("Insert into Student Values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Add"] = "Data";
            Response.Redirect("AddStud.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Course / Division field cannot be left empty');", true);
        }
    }
}