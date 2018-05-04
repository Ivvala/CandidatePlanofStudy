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
    public partial class seniorhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewstdall.Visible = false;
            }
            Label1.Visible = true;
            if (Session["fullname"] == "")
            {
                Response.Redirect("logincps.aspx");
            }
            else
            {
                Label1.Text = "Hello Senior Secretary  " + Session["fullname"].ToString();
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

        protected void linkbtnshowall_Click1(object sender, EventArgs e)
        {
            GridViewstdall.Visible = true;
            GridViewstdsearch.Visible = false;
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            GridViewstdall.Visible = false;
            GridViewstdsearch.Visible = true;
        }

        protected void GridViewstdall_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewstdsearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            String sid = GridViewstdsearch.SelectedRow.Cells[1].Text;
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
                    Response.Redirect("seccps.aspx");
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
    }
}