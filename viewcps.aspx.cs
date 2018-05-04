using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CandidatePlanofStudy
{
    public partial class viewcps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            String sid = GridView1.SelectedRow.Cells[1].Text;
            Session["sid"] = sid;
            if (Session["sid"] != null)
            {
                Response.Redirect("studentfirstcps.aspx");
            }
        }

        protected void linklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("logincps.aspx");

        }
    }
}