using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AChatForum : System.Web.UI.Page
{
    string name, comm, Date;
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Add"]=="Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Chat Forum Created');", true);
            Session["Add"] = "";
        }
        string s = "select name,comm,date,time from Forum";
        SqlDataAdapter sda = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        int cou = ds.Tables[0].Rows.Count;

        Label2.Text = "";
        for (int i = 0; i < cou; i++)
        {
            name = "<tr><td width=\"15%\" align=\"left\" style=\"color: #000000\" valign=\"middle\"><h4>" + ds.Tables[0].Rows[i][0].ToString() + " :</h4></td>";

            comm = "<td width=\"70%\" align=\"left\" style=\"color: #000000\" valign=\"middle\"><h4>" + ds.Tables[0].Rows[i][1].ToString() + "</h4></td>";

            Date = "<td width=\"15%\" align=\"right\" style=\"color: grey\" valign=\"middle\"> <h6>" + ds.Tables[0].Rows[i][2].ToString() + " " + ds.Tables[0].Rows[i][3].ToString() + "</h6></td></tr>";

            Label2.Text += name + comm + Date;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into Forum Values ('Admin','Admin','" + TextBox1.Text + "','" + DateTime.Now.ToString("yyyy/MM/dd") + "','" + DateTime.Now.ToString("HH:mm") + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["Add"] = "Data";
        Response.Redirect("AChatForum.aspx");
    }
}