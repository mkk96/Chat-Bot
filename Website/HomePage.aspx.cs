using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SpeechLib;
using System.Data;
using Check;

public partial class HomePage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        load();
        if (Session["Bot"] == "Yes")
        {
            SpVoice voice;
            voice = new SpVoice();
            voice.Volume = 100;  // 0...100
            voice.Rate = -2;     // -10...10

            TextBox8.Text = Session["Ques"].ToString();
            TextBox13.Text = Session["Ans"].ToString().Replace("'", "");
            if (TextBox13.Text == "")
            {
                TextBox13.Text = "Sorry we do not have answer for that question";
            }
            SqlCommand cmd = new SqlCommand("Insert into Qhistory Values ('"+TextBox8.Text+"','"+TextBox13.Text+"','"+DateTime.Now.ToString("yyyy/MM/dd")+"','"+DateTime.Now.ToString("HH:mm")+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            voice.Speak(TextBox13.Text);
            Panel1.Visible = true;
            Session["Bot"] = "No";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            SqlCommand cmd = new SqlCommand("Select * from Student where usernm = '" + TextBox1.Text + "' AND pass = '" + TextBox2.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                //con.Close();
                dr.Read();
                Session["sname"] = dr[1].ToString();
                Session["SId"] = TextBox1.Text;
                Session["FType"] = "Student";
                con.Close();
                Response.Redirect("SQuery.aspx");
            }
            else
            {
                con.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Invalid Student ID / Password');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please fill all Feilds');", true);
        }
    }

    
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox11.Text != "" && TextBox12.Text != "")
        {
            SqlCommand cmd = new SqlCommand("Select * from Admin where ID = '" + TextBox11.Text + "' AND Pass = '" + TextBox12.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                con.Close();
                Session["FType"] = "Admin";
                Response.Redirect("AViewInvalid.aspx");
            }
            else
            {
                con.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Invalid Admin ID / Password');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please fill all Feilds');", true);
        }
    }

   
    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (TextBox3.Text == "" && TextBox4.Text == "" && TextBox5.Text == "" && TextBox6.Text == "" && TextBox7.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please fill all Feilds');", true);
        }
        else
        {
            SqlCommand cmd = new SqlCommand("Insert Into Enquiry(Name,Email,Contact,ToSee,Type,Purpose) Values ('"+ TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','"+CheckBoxList1.SelectedItem.Text+"','" + TextBox7.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            print.Enabled = true;
            Response.Redirect("HomePage.aspx#Visitor");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox8.Text != "")
        {
            string s = Convert.ToString(TextBox8.Text);
            string reply = "";
            s = s.ToLower();
            if (s.Equals("hi") || s.Equals("hii") || s.Equals("hiii") || s.Equals("hiiii") || s.Equals("hhii"))
            {
                reply = "Hi";
                TextBox13.Text = reply;
                Session["Ques"] = TextBox8.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("HomePage.aspx#parent");
            }
            else if (s.Equals("hello") || s.Equals("helloo") || s.Equals("helo") || s.Equals("heello") || s.Equals("helllo") || s.Equals("helloooo"))
            {
                reply = "Hello";
                TextBox13.Text = reply;
                Session["Ques"] = TextBox8.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("HomePage.aspx#parent");
            }
            else if (s.Contains("you") && s.Contains("how") || s.Contains("you") && s.Contains("how") && s.Contains("do"))
            {
                reply = "I am Fine.. How Are You ?";
                TextBox13.Text = reply;
                Session["Ques"] = TextBox8.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("HomePage.aspx#parent");
            }
            else if (s.Contains("i") && s.Contains("fine") || s.Contains("i") && s.Contains("good"))
            {
                reply = "Ohh thats great. How may i help you?";
                TextBox13.Text = reply;
                Session["Ques"] = TextBox8.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("HomePage.aspx#parent");
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("Select distinct Main from Question", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                string k1="", k2="", k3="", k4="";
                string[] mainKey = new string[ds.Tables[0].Rows.Count];

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    mainKey[i] = ds.Tables[0].Rows[i][0].ToString();
                }

                for (int j = 0; j < mainKey.Length; j++)
                {
                    if (s.Contains(mainKey[j]))
                    {
                        da = new SqlDataAdapter("Select K1,K2,K3,K4,Answer from Question where Main = '"+mainKey[j]+"'", con);
                        ds = new DataSet();
                        da.Fill(ds);
                        int count = Convert.ToInt32(ds.Tables[0].Rows.Count);
                        for (int i = 0; i < count; i++)
                        {
                            k1 = Convert.ToString(ds.Tables[0].Rows[i][0]).ToLower();
                            k2 = Convert.ToString(ds.Tables[0].Rows[i][1]).ToLower();
                            k2 = Convert.ToString(ds.Tables[0].Rows[i][2]).ToLower();
                            k2 = Convert.ToString(ds.Tables[0].Rows[i][3]).ToLower();
                            if (s.Contains(k1) && s.Contains(k2) && s.Contains(k3) && s.Contains(k4))
                            {
                                reply = Convert.ToString(ds.Tables[0].Rows[i][4]);
                                goto End;
                            }
                            else if (s.Contains(k1) && s.Contains(k2) && s.Contains(k3))
                            {
                                reply = Convert.ToString(ds.Tables[0].Rows[i][4]);
                                goto End;
                            }
                            else if (s.Contains(k1) && s.Contains(k2))
                            {
                                reply = Convert.ToString(ds.Tables[0].Rows[i][4]);
                                goto End;
                            }
                            else if (s.Contains(k1))
                            {
                                reply = Convert.ToString(ds.Tables[0].Rows[i][4]);
                                goto End;
                            }
                        }
                    }
                }
                End:
                TextBox13.Text = reply;
                Session["Ques"] = TextBox8.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("HomePage.aspx#parent");
            }
            Panel1.Visible = true;
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please fill all Feilds');", true);
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        if (TextBox8.Text != "" && TextBox13.Text != "")
        {
            SqlCommand cmd = new SqlCommand("Insert into Invalid Values ('"+TextBox8.Text+"','"+TextBox13.Text+"','" + DateTime.Now.ToString("yyyy/MM/dd") + "','" + DateTime.Now.ToString("HH:mm")+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Question successfully marked as Invalid');", true);
            Button6.Enabled = false;
        }
    }

    public void load()
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.checkLoad("P055", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion
    }
}