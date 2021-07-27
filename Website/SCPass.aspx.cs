using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SCPass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SPass"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Password Updated Successfully');", true);
            Session["SPass"] = "No";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                string id = Session["SId"].ToString();
                SqlCommand cmd = new SqlCommand("Select * from Student where usernm = '"+id+"' AND pass = '"+TextBox1.Text+"'",con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    con.Close();
                    cmd = new SqlCommand("Update Student set Pass = '"+TextBox2.Text+"' Where usernm = '"+id+"'",con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Session["SPass"] = "Yes";
                    Response.Redirect("SCPass.aspx");
                }
                else
                {
                    con.Close();
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Old Password Does not Match');", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('New Password Does not Match');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Fill all Feilds');", true);
        }
    }
}