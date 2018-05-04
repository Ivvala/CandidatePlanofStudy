using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CandidatePlanofStudy
{
    public partial class logincps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
             lblmsg.Visible = true;
                    string connectionstring = ConfigurationManager.ConnectionStrings["eservicesdb"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionstring);

          string stdcheck = "select * from student where Studentid=@uid and password=@password";
                SqlCommand cmd = new SqlCommand(stdcheck, con);
                cmd.Parameters.AddWithValue("@uid", Convert.ToInt32(txtuid.Text));
                cmd.Parameters.AddWithValue("@password", txtupass.Text);
               // cmd.Parameters.AddWithValue("@role", ddrole.SelectedValue.ToString());
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
              // 
                if (dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Session["fullname"] = dr["fullname"].ToString();
                        Session["sid"] = dr["Studentid"].ToString();
                    }
                    
                    con.Close();
                    Response.Redirect("homestudent.aspx");

                }
                con.Close();
               
               
               
                

                    
            
           
                 string stdcheck1 = "select * from faculty where fid=@uid and password=@password";
                SqlCommand cmd1 = new SqlCommand(stdcheck1, con);
                cmd1.Parameters.AddWithValue("@uid", Convert.ToInt32(txtuid.Text));
                cmd1.Parameters.AddWithValue("@password", txtupass.Text);
                //cmd.Parameters.AddWithValue("@role", ddrole.SelectedValue.ToString());
                con.Open();
                SqlDataReader dr1 = cmd1.ExecuteReader();
              // 
                if (dr1.HasRows)
                {
                    while (dr1.Read())
                    {
                        Session["fullname"] = dr1["fname"].ToString();
                    }
                   
                    
                    con.Close();
                    Response.Redirect("homefaculty.aspx");

                }

                con.Close();
               
                string stdcheck2 = "select * from academicadvisor where aid=@uid and password=@password";
                SqlCommand cmd2 = new SqlCommand(stdcheck2, con);
                cmd2.Parameters.AddWithValue("@uid", Convert.ToInt32(txtuid.Text));
                cmd2.Parameters.AddWithValue("@password", txtupass.Text);
               // cmd.Parameters.AddWithValue("@role", ddrole.SelectedValue.ToString());
                con.Open();
                SqlDataReader dr2 = cmd2.ExecuteReader();
                // 
                if (dr2.HasRows)
                {
                    while (dr2.Read())
                    {
                        Session["fullname"] = dr2["name"].ToString();
                    }
                   
                    con.Close();
                    Response.Redirect("homeacademic.aspx");

                }
                con.Close();
                      string stdcheck3 = "select * from seniorsecretary where Sid=@uid and password=@password";
                SqlCommand cmd3 = new SqlCommand(stdcheck3, con);
                cmd3.Parameters.AddWithValue("@uid", Convert.ToInt32(txtuid.Text));
                cmd3.Parameters.AddWithValue("@password", txtupass.Text);
               // cmd.Parameters.AddWithValue("@role", ddrole.SelectedValue.ToString());
                con.Open();
                SqlDataReader dr3 = cmd3.ExecuteReader();
              // 
                if (dr3.HasRows)
                {
                    while(dr3.Read())
                    {
                        Session["fullname"] = dr3["name"].ToString();
                    }
                    
                    con.Close();
                    Response.Redirect("seniorhome.aspx");

                }
               


                else
                {
                    lblmsg.Text = "Invalid Credentials";
                    con.Close();
                }
                con.Close();
                
        
             }
            
        }
    }