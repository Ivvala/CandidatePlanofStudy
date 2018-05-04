using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace CandidatePlanofStudy
{
    public partial class studentfirstcps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                  string connectionstring = ConfigurationManager.ConnectionStrings["eservicesdb"].ConnectionString;
                  SqlConnection con = new SqlConnection(connectionstring);
               
                string stdcheck = "select * from student where Studentid=@uid";
                SqlCommand cmd = new SqlCommand(stdcheck, con);
                cmd.Parameters.AddWithValue("@uid", Convert.ToInt32(Session["sid"]));
                
               
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
              // 
                if (dr.HasRows)
                {
                    while(dr.Read())
                    {
                        cpsmajor.Text=Convert.ToString(dr["major"]);
                        cpsyear.Text = dr["yearofjoining"].ToString();
                        cpsstdid.Text = dr["Studentid"].ToString();
                        cpsstudentname.Text = dr["firstname"].ToString();
                        cpsstdname.Text = dr["firstname"].ToString() + dr["lastname"].ToString();
                        cpsfacultyname.Text=dr["facultyadvisor"].ToString();

                    }
                    
                    con.Close();
                    if(cpsmajor.Text.Equals("Computer Engineering"))
                    {
                        hidenfieldmajor.Value = "CENG";
                    }
                    if (cpsmajor.Text.Equals("Systems Engineering"))
                    {
                        hidenfieldmajor.Value = "SENG";
                    }
                    if (cpsmajor.Text.Equals("Engineering Management"))
                    {
                        hidenfieldmajor.Value = "EMGT";
                    }
                    if (cpsmajor.Text.Equals("Software Engineering"))
                    {
                        hidenfieldmajor.Value = "SWEN";
                    }
                    if (cpsmajor.Text.Equals("Biotechnology"))
                    {
                        hidenfieldmajor.Value = "BIOT";
                    }
                    

                }
               
               
                else
                {
                    Response.Write( "Invalid Credentials");
                    con.Close();
                }
        }

        
    }
}