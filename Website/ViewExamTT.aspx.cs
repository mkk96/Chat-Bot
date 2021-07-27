using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewExamTT : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = (string)Session["SId"];
        string sql = "select course,div from Student where usernm='" + s + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        string course = ds.Tables[0].Rows[0][0].ToString();
        string div = ds.Tables[0].Rows[0][1].ToString();

        string sql1 = "select image from examtt where  course='" + course + "' and div='" + div + "'";
        SqlDataAdapter sda1 = new SqlDataAdapter(sql1, con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Image1.ImageUrl = ds1.Tables[0].Rows[0][0].ToString();
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Currently, No Exam Time-Table Added');", true);
        }
    }
}