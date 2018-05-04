using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
namespace CandidatePlanofStudy
{
    public partial class homefaculty : System.Web.UI.Page
    {
        static string fname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GridViewstdall.Visible = false;
            }
            lblloginmsg.Visible = true;
            if (Session["fullname"] == "")
            {
                Response.Redirect("logincps.aspx");
            }
            else
            {
                fname = Session["fullname"].ToString();
                lblloginmsg.Text = "Hello Faculty Advisor  " + Session["fullname"].ToString();
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

        protected void Linkbtnshowall_Click(object sender, EventArgs e)
        {
            GridViewstdall.Visible = true;
        }

        protected void DropDownListmajor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewsemmajor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewstdall_SelectedIndexChanged(object sender, EventArgs e)
        {
            String sid = GridViewstdall.SelectedRow.Cells[1].Text;
            String concps = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection con = new SqlConnection(concps);
            SqlCommand cmd = new SqlCommand("select * from studentdraft where Studentid=@id", con);
            cmd.Parameters.AddWithValue("@id", sid);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                Session["sid"] = sid;
                if (Session["sid"] != null)
                {
                    Response.Redirect("facultydraftprocess.aspx");
                }

            }
            else
            {
                lblcpscheck.Visible = true;
                lblcpscheck.Text = "Draft cps not generated yet  for the student";

                con.Close();
            }

            con.Close();
           
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            GridViewstdall.Visible = false;
            GridViewstdsearch.Visible = true;
        }

        protected void linkbtnshowall_Click1(object sender, EventArgs e)
        {
            GridViewstdall.Visible = true;
            GridViewstdsearch.Visible = false;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> studentsbyfaculty(String pre)
        {
            List<string> allelec = new List<string>();
            string constring = ConfigurationManager.ConnectionStrings["eservicesdb"].ConnectionString;
            SqlConnection conrbc1 = new SqlConnection(constring);

            bool allCharactersInStringAreDigits = pre.All(char.IsDigit);
            String query;
            if (allCharactersInStringAreDigits)
            {
                query = "select  Studentid from student where Studentid like ''+@name+'%' and facultyadvisor=@facultyadvisor";

            }
            else
            {
                query = "select  firstname from student where firstname like ''+@name+'%' and facultyadvisor=@facultyadvisor";
            }
            SqlCommand cmd = new SqlCommand(query, conrbc1);

            cmd.Parameters.AddWithValue("@name", pre);
            cmd.Parameters.AddWithValue("@facultyadvisor", fname);


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
        protected void GridViewstdsearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            String sid = GridViewstdsearch.SelectedRow.Cells[1].Text;
            String concps = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection con = new SqlConnection(concps);
            SqlCommand cmd = new SqlCommand("select * from studentdraft where Studentid=@id", con);
            cmd.Parameters.AddWithValue("@id", sid);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                Session["sid"] = sid;
                if (Session["sid"] != null)
                {
                    Response.Redirect("facultydraftprocess.aspx");
                }

            }
            else
            {
                lblcpscheck.Visible = true;
                lblcpscheck.Text = "Draft cps not generated yet  for the student";
               
                con.Close();
            }

            con.Close();
           
          
        }
    }


}