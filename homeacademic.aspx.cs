using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
namespace CandidatePlanofStudy
{
    public partial class homeacademic : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            lblloginmsg.Visible = true;
            if (Session["fullname"] == "")
            {
                Response.Redirect("logincps.aspx");
            }
            else
            {
                lblloginmsg.Text = "Hello Academic Advisor  " + Session["fullname"].ToString();
            }
            //students("11");

        }

        protected void linklogout_Click(object sender, EventArgs e)
        {
            Session["fullname"] = "";
            if (Session["fullname"] == "")
            {
                Response.Redirect("logincps.aspx");
            }
        }



        protected void btnstdid_Click(object sender, EventArgs e)
        {
            GridViewsemmajor.Visible = false;
            GridViewstdtxtsearch.Visible = true;
            // 
        }
        protected void DropDownListmajor_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewstdtxtsearch.Visible = false;
            GridViewsemmajor.Visible = true;
        }

        protected void GridViewsemmajor_SelectedIndexChanged(object sender, EventArgs e)
        {
            String sid = GridViewsemmajor.SelectedRow.Cells[1].Text;
           
            Session["sid"] = sid;
            if (Session["sid"] != null)
            {
                Response.Redirect("studentfirstcps.aspx");
            }

        }

        protected void GridViewstdtxtsearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            String sid = GridViewstdtxtsearch.SelectedRow.Cells[1].Text;
            String concps = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection con = new SqlConnection(concps);
            SqlCommand cmd = new SqlCommand("select * from studentcpsfinal where Studentid=@id", con);
            cmd.Parameters.AddWithValue("@id", sid);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                Session["sid"] = sid;
                if (Session["sid"] != null)
                {
                    Response.Redirect("academicfinalcps.aspx");
                }
                con.Close();
            }
            else
            {
                lblcpscheck.Visible = true;
                lblcpscheck.Text = "Cps not yet generated for the student";
            }

            con.Close();
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> students(String pre)
        {
            List<string> allelec = new List<string>();
            string constring = ConfigurationManager.ConnectionStrings["eservicesdb"].ConnectionString;
            SqlConnection conrbc1 = new SqlConnection(constring);

            bool allCharactersInStringAreDigits = pre.All(char.IsDigit);
            String query;
            if (allCharactersInStringAreDigits)
            {
               query = "select  Studentid from student where Studentid like ''+@name+'%' ";

            }
            else
            {
                 query = "select  firstname from student where firstname like ''+@name+'%' ";
            }
            SqlCommand cmd = new SqlCommand(query, conrbc1);

            cmd.Parameters.AddWithValue("@name", pre);
           

            conrbc1.Open();
            SqlDataReader dres = cmd.ExecuteReader();
            if (dres.HasRows)
            {
                while (dres.Read())
                {
                    if (allCharactersInStringAreDigits)
                    {
                        allelec.Add(Convert.ToString(dres["Studentid"].ToString()));

                    }
                    else
                    {
                        allelec.Add(dres["firstname"].ToString());
                    }
                   
                   
                }

            }
            conrbc1.Close();

            return allelec;
        }

       
    }
}