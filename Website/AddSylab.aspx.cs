using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddSylab : System.Web.UI.Page
{
    string image, path;
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Sylabus Details Added');", true);
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        image = FileUpload1.FileName;
        path = Server.MapPath("~\\images\\");
        FileUpload1.SaveAs(path + image);
        Image1.ImageUrl = "images\\" + image;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into Sylab Values ('" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + Image1.ImageUrl + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["Add"] = "Data";
        Response.Redirect("AddSylab.aspx");
    }
}