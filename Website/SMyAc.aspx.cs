using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SMyAc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = (string)Session["SId"];
        string sql = "select * from Student where usernm='" + s + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}