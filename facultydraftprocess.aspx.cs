using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CandidatePlanofStudy
{
    public partial class facultydraftprocess : System.Web.UI.Page
    {
        string major;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["sid"]==null)
            {
                Response.Write("logincps.aspx");
            }
            else
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["eservicesdb"].ConnectionString;
                  SqlConnection con = new SqlConnection(connectionstring);
               
                string stdcheck = "select * from student where Studentid=@sid";
                SqlCommand cmd = new SqlCommand(stdcheck, con);
                cmd.Parameters.AddWithValue("@sid", Convert.ToInt32(Session["sid"]));
                
               
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
              // 
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        major = dr["major"].ToString();

                    }
                    string rubric = major;
                    if (rubric.Trim().ToUpper().Equals("COMPUTER SCIENCE"))
                    {
                        Response.Redirect("facultycscidraft.aspx");
                    }
                    if (rubric.Trim().ToUpper().Equals("COMPUTER ENGINEERING"))
                    {
                        Response.Redirect("facultycengdraft.aspx");
                    }
                    if (rubric.Trim().ToUpper().Equals("COMPUTER INFORMATION SYSTEMS"))
                    {
                        Response.Redirect("facultycinfdraft.aspx");
                    }
                    if (rubric.Trim().ToUpper().Equals("SOFTWARE ENGINEERING"))
                    {
                        Response.Redirect("facultysedraft.aspx");
                    }
                    if (rubric.Trim().ToUpper().Equals("SYSTEMS ENGINEERING"))
                    {
                        Response.Redirect("facultysengdraft.aspx");
                    }
                    if (rubric.Trim().ToUpper().Equals("BIOTECHNOLOGY"))
                    {
                        Response.Redirect("facultybiodraft.aspx");
                    }
                }

            }

        }
    }
}