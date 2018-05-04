using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CandidatePlanofStudy
{
    public partial class viewfaculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewfacstd.Visible = false;
            lblloginmsg.Visible = true;
            if (Session["fullname"] == "")
            {
                Response.Redirect("logincps.aspx");
            }
            else
            {
                lblloginmsg.Text = "Hello Academic Advisor  " + Session["fullname"].ToString();
            }

        }

        protected void linklogout_Click(object sender, EventArgs e)
        {
            Session["fullname"] = "";
            if (Session["fullname"] == "")
            {
                Response.Redirect("logincps.aspx");
            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            GridViewmajor.Visible = false;
            GridViewfaculty.Visible = true;
            GridViewfacstd.Visible = false;
        }

        protected void DropDownListmajor_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewmajor.Visible = true;
            GridViewfaculty.Visible = false;
            GridViewfacstd.Visible = false;
        }

        protected void GridViewfaculty_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            string fname=GridViewfaculty.SelectedRow.Cells[2].Text;
            Session["fname"]= fname;
            GridViewfacstd.Visible = true;
           
        }

        protected void GridViewmajor_SelectedIndexChanged(object sender, EventArgs e)
        {
            string fname = GridViewmajor.SelectedRow.Cells[2].Text;
            Session["fname"] = fname;
            GridViewfacstd.Visible = true;
           
        }

        protected void GridViewfacstd_SelectedIndexChanged(object sender, EventArgs e)
        {
            String sid = GridViewfacstd.SelectedRow.Cells[1].Text;
            String concps = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection con = new SqlConnection(concps);
            SqlCommand cmd = new SqlCommand("select * from studentcpsfinal where Studentid=@id", con);
            cmd.Parameters.AddWithValue("@id", sid);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
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
        public static List<string> faculty(String pre)
        {
            List<string> allelec = new List<string>();
            string constring = ConfigurationManager.ConnectionStrings["eservicesdb"].ConnectionString;
            SqlConnection conrbc1 = new SqlConnection(constring);

            bool allCharactersInStringAreDigits = pre.All(char.IsDigit);
            String query;
            if (allCharactersInStringAreDigits)
            {
                query = "select  fid from faculty where fid like ''+@name+'%' ";

            }
            else
            {
                query = "select  fname from faculty where fname like ''+@name+'%' ";
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
                        allelec.Add(Convert.ToString(dres["fid"].ToString()));

                    }
                    else
                    {
                        allelec.Add(dres["fname"].ToString());
                    }


                }

            }
            conrbc1.Close();

            return allelec;
        }

    }
}