using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddGenNotice : System.Web.UI.Page
{
    string image, path;
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('General Notice Added');", true);
            Session["Add"] = "";
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
        SqlCommand cmd = new SqlCommand("Insert into GNotice Values ('" + TextBox1.Text + "','" + Image1.ImageUrl + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["Add"] = "Data";
        Response.Redirect("AddGenNotice.aspx");
    }
}