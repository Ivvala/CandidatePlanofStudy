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
    public partial class studentcps : System.Web.UI.Page
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
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           // String major=GridView1.SelectedRow.Cells[6].Text;
            String sid = GridView1.SelectedRow.Cells[1].Text;

            String concps = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection con = new SqlConnection(concps);
            SqlCommand cmd = new SqlCommand("select * from studentdraft where Studentid=@id", con);
            cmd.Parameters.AddWithValue("@id", sid);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                lblcpscheck.Visible = true;
                lblcpscheck.Text = "Draft cps already generated  for the student";
                
            }
            else
            {
                Session["sid"] = sid;
                if (Session["sid"] != null)
                {
                    Response.Redirect("generatedraftcps2.aspx");
                }
                con.Close();
            }

            con.Close();
           
           
        }

        protected void linklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("logincps.aspx");
        }

        protected void DropDownListmajor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownsemister_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourcestudents_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        
    }
}