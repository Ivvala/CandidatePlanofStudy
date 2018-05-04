using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;


namespace CandidatePlanofStudy
{
    public partial class newcatalogue : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlTransaction tran;        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=.;Initial Catalog=Candidateplanofstudy;Integrated Security=True");
            cmd = new SqlCommand();
            cmd.Connection = con;     
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
            Response.Redirect("logincps.aspx");

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            con.Open();
            tran = con.BeginTransaction();
            cmd.Transaction = tran;
            SqlConnection conrc = new SqlConnection("Data Source=.;Initial Catalog=Candidateplanofstudy;Integrated Security=True");
            SqlCommand cmdrc = new SqlCommand("select * from catalog where rubric=@rubric and catalogyear=@year", conrc);
            cmdrc.Parameters.AddWithValue("@rubric", DropDownList1.SelectedValue);
            cmdrc.Parameters.AddWithValue("@year", ddlsaveto.SelectedValue);
            conrc.Open();
            SqlDataReader dr = cmdrc.ExecuteReader();
            if (dr.HasRows)
            {
                lblmsg.Text = "Data already exist";
                conrc.Close();
            }
            else
            {

                try
                {
                    foreach (GridViewRow g1 in GridViewcatalogue.Rows)
                    {
                        string rubric = (g1.FindControl("Label1") as Label).Text;
                        string courseid = (g1.FindControl("Label2") as Label).Text;
                        string coursename = (g1.FindControl("Label3") as Label).Text;
                        string unit = (g1.FindControl("Label4") as Label).Text;
                        int units = Convert.ToInt32(unit);

                        string CENG = (g1.FindControl("ddlceng") as DropDownList).Text;
                        string CINF = (g1.FindControl("ddlcinf") as DropDownList).Text;
                        string CSCI = (g1.FindControl("ddlcsci") as DropDownList).Text;
                        string SWEN = (g1.FindControl("ddlswen") as DropDownList).Text;
                        string EMGT = (g1.FindControl("ddlemgt") as DropDownList).Text;
                        string SENG = (g1.FindControl("ddlseng") as DropDownList).Text;


                        string query = "insert into catalog (rubric,courseid,coursename,units, CENG ,CINF , CSCI , SWEN , EMGT , SENG,catalogyear)values(@rubric,@courseid,@coursename,@units,@CENG,@CINF,@CSCI,@SWEN,@EMGT,@SENG,@catalogyear)";
                        //cmd.CommandText = "insert into Members values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "')";

                        cmd = new SqlCommand(query, con, tran);
                        cmd.Parameters.AddWithValue("@rubric", rubric);
                        cmd.Parameters.AddWithValue("@courseid", courseid);
                        cmd.Parameters.AddWithValue("@coursename", coursename);
                        cmd.Parameters.AddWithValue("@units", units);
                        cmd.Parameters.AddWithValue("@CENG", CENG);
                        cmd.Parameters.AddWithValue("@CINF", CINF);
                        cmd.Parameters.AddWithValue("@CSCI", CSCI);
                        cmd.Parameters.AddWithValue("@SWEN", SWEN);
                        cmd.Parameters.AddWithValue("@EMGT", EMGT);
                        cmd.Parameters.AddWithValue("@SENG", SENG);
                        cmd.Parameters.AddWithValue("@catalogyear", ddlyear.SelectedValue);


                        cmd.ExecuteNonQuery();
                    }
                    tran.Commit();
                    lblmsg.Text = "Records inserted successfully";

                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                    tran.Rollback();

                    lblmsg.Text += "No Data Is Inserted. <br />";
                    //lblMessage.Text += ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
        }

       
        protected void btnsaveto_Click(object sender, EventArgs e)
        {
            con.Open();
            tran = con.BeginTransaction();
            cmd.Transaction = tran;
            lblmsg.Visible = true;
           SqlConnection conrc = new SqlConnection("Data Source=.;Initial Catalog=Candidateplanofstudy;Integrated Security=True");
            SqlCommand cmdrc = new SqlCommand("select * from catalog where rubric=@rubric and catalogyear=@year", conrc);
            cmdrc.Parameters.AddWithValue("@rubric", DropDownList1.SelectedValue);
            cmdrc.Parameters.AddWithValue("@year", ddlsaveto.SelectedValue);
            conrc.Open();
            SqlDataReader dr = cmdrc.ExecuteReader();
            if (dr.HasRows)
            {
                lblmsg.Text = "Data already exist";
                conrc.Close();
            }
            else
            {

                try
                {
                    foreach (GridViewRow g1 in GridViewviewcatalog.Rows)
                    {
                        string rubric = (g1.FindControl("Label1") as Label).Text;
                        string courseid = (g1.FindControl("Label2") as Label).Text;
                        string coursename = (g1.FindControl("Label3") as Label).Text;
                        string unit = (g1.FindControl("Label4") as Label).Text;
                        int units = Convert.ToInt32(unit);

                        string CENG = (g1.FindControl("ddlceng") as DropDownList).Text;
                        string CINF = (g1.FindControl("ddlcinf") as DropDownList).Text;
                        string CSCI = (g1.FindControl("ddlcsci") as DropDownList).Text;
                        string SWEN = (g1.FindControl("ddlswen") as DropDownList).Text;
                        string EMGT = (g1.FindControl("ddlemgt") as DropDownList).Text;
                        string SENG = (g1.FindControl("ddlseng") as DropDownList).Text;


                        string query = "insert into catalog (rubric,courseid,coursename,units, CENG ,CINF , CSCI , SWEN , EMGT , SENG,catalogyear)values(@rubric,@courseid,@coursename,@units,@CENG,@CINF,@CSCI,@SWEN,@EMGT,@SENG,@catalogyear)";
                        //cmd.CommandText = "insert into Members values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "')";

                        cmd = new SqlCommand(query, con, tran);
                        cmd.Parameters.AddWithValue("@rubric", rubric);
                        cmd.Parameters.AddWithValue("@courseid", courseid);
                        cmd.Parameters.AddWithValue("@coursename", coursename);
                        cmd.Parameters.AddWithValue("@units", units);
                        cmd.Parameters.AddWithValue("@CENG", CENG);
                        cmd.Parameters.AddWithValue("@CINF", CINF);
                        cmd.Parameters.AddWithValue("@CSCI", CSCI);
                        cmd.Parameters.AddWithValue("@SWEN", SWEN);
                        cmd.Parameters.AddWithValue("@EMGT", EMGT);
                        cmd.Parameters.AddWithValue("@SENG", SENG);
                        cmd.Parameters.AddWithValue("@catalogyear", ddlsaveto.SelectedValue);


                        cmd.ExecuteNonQuery();
                    }
                    tran.Commit();
                    lblmsg.Text = "Records inserted successfully";

                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                    tran.Rollback();

                    lblmsg.Text += "No Data Is Inserted. <br />";
                    //lblMessage.Text += ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void btnviewcatalog_Click(object sender, EventArgs e)
        {
            GridViewviewcatalog.Visible = true;
            GridViewcatalogue.Visible = false;
        }

        protected void btnnewcatalogue_Click(object sender, EventArgs e)
        {
            GridViewviewcatalog.Visible = false;
            GridViewcatalogue.Visible = true;
        }

       
       

        
    }

        
    
}