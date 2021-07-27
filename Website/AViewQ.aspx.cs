using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AViewQ : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from Qhistory Order By Date,Time Desc", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}