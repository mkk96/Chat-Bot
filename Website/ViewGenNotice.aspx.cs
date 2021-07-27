using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewGenNotice : System.Web.UI.Page
{
    string image, path;
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select * from GNotice";
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "yes")
        {
            string i = Convert.ToString(e.CommandArgument.ToString());
            string s = "select image from GNotice where title='" + i + "'";
            SqlDataAdapter sda = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            Image1.ImageUrl = ds.Tables[0].Rows[0][0].ToString();
            Image1.Visible = true;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}