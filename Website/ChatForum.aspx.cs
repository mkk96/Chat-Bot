using System;
using SpeechLib;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ChatForum : System.Web.UI.Page
{
    string name, comm, Date;
    SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ColBot;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select name,comm,date,time from Forum";
        SqlDataAdapter sda = new SqlDataAdapter(s,con);
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

        if (Session["Bot"] == "Yes")
        {
            SpVoice voice;
            voice = new SpVoice();
            voice.Volume = 100;  // 0...100
            voice.Rate = -2;     // -10...10

            TextBox1.Text = Session["Ques"].ToString();
            TextBox2.Text = Session["Ans"].ToString().Replace("'", "");
            if (TextBox2.Text == "")
            {
                TextBox2.Text = "Sorry we do not have answer for that question";
            }
            SqlCommand cmd = new SqlCommand("Insert into Qhistory Values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now.ToString("yyyy/MM/dd") + "','" + DateTime.Now.ToString("HH:mm") + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            voice.Speak(TextBox2.Text);
            Panel1.Visible = true;
            Session["Bot"] = "No";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name="";
       
            name = (string)Session["sname"];
        

        SqlCommand cmd = new SqlCommand("Insert into Forum Values ('101','"+name+"','" + TextBox1.Text + "','" + DateTime.Now.ToString("yyyy/MM/dd") + "','" + DateTime.Now.ToString("HH:mm") + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        //  Response.Redirect("ChatForum.aspx");

        if (TextBox1.Text != "")
        {
            string s = Convert.ToString(TextBox1.Text);
            string reply = "";
            s = s.ToLower();
            if (s.Equals("hi") || s.Equals("hii") || s.Equals("hiii") || s.Equals("hiiii") || s.Equals("hhii"))
            {
                reply = "Hi";
                TextBox2.Text = reply;
                Session["Ques"] = TextBox1.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("ChatForum.aspx");
            }
            else if (s.Equals("hello") || s.Equals("helloo") || s.Equals("helo") || s.Equals("heello") || s.Equals("helllo") || s.Equals("helloooo"))
            {
                reply = "Hello";
                TextBox2.Text = reply;
                Session["Ques"] = TextBox1.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("ChatForum.aspx");
            }
            else if (s.Contains("you") && s.Contains("how") || s.Contains("you") && s.Contains("how") && s.Contains("do"))
            {
                reply = "I am Fine.. How Are You ?";
                TextBox2.Text = reply;
                Session["Ques"] = TextBox1.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
               // Response.Redirect("ChatForum.aspx");
            }
            else if (s.Contains("i") && s.Contains("fine") || s.Contains("i") && s.Contains("good"))
            {
                reply = "Ohh thats great. How may i help you?";
                TextBox2.Text = reply;
                Session["Ques"] = TextBox1.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("ChatForum.aspx");
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("Select distinct Main from Question Where Student = 'Yes'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                string k1 = "", k2 = "", k3 = "", k4 = "";
                string[] mainKey = new string[ds.Tables[0].Rows.Count];

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    mainKey[i] = ds.Tables[0].Rows[i][0].ToString();
                }

                for (int j = 0; j < mainKey.Length; j++)
                {
                    if (s.Contains(mainKey[j]))
                    {
                        da = new SqlDataAdapter("Select K1,K2,K3,K4,Answer from Question where Main = '" + mainKey[j] + "' AND Student = 'Yes'", con);
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
                TextBox2.Text = reply;
                
                //Response.Redirect("ChatForum.aspx");
                Session["Ques"] = TextBox1.Text;
                Session["Ans"] = reply;
                Session["Bot"] = "Yes";
                Response.Redirect("ChatForum.aspx");
            }
            Panel1.Visible = true;
            SqlCommand cmd1 = new SqlCommand("Insert into Forum Values ('100001','Bot','" + TextBox2.Text + "','" + DateTime.Now.ToString("yyyy/MM/dd") + "','" + DateTime.Now.ToString("HH:mm") + "')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();

            Response.Redirect("ChatForum.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please fill all Feilds');", true);
        }

        
    }
}