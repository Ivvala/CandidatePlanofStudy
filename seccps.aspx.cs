using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CandidatePlanofStudy
{
    public partial class seccps : System.Web.UI.Page
    {
        String Studentid, firstname, lastname, fullname, email, major, facultyadvisor, semester, year, rubric;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblloginmsg.Visible = true;
            if (Session["fullname"] == "")
            {
                Response.Redirect("logincps.aspx");
            }
            else
            {
                lblloginmsg.Text = "Hello Student  " + Session["fullname"].ToString();
            }
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
                while (dr.Read())
                {
                    Studentid = dr["Studentid"].ToString();
                    firstname = dr["firstname"].ToString();
                    lastname = dr["lastname"].ToString();

                    fullname = dr["fullname"].ToString();
                    email = dr["email"].ToString();
                    major = dr["major"].ToString();
                    facultyadvisor = dr["facultyadvisor"].ToString();
                    semester = dr["semister"].ToString();


                    year = dr["yearofjoining"].ToString();
                    rubric = major;






                    cpsmajor.Text = major;
                    cpsyear.Text = year;
                    cpsstdid.Text = Studentid;
                    cpsstuname.Text = fullname;


                }
            }
            if (!IsPostBack)
            {
                if (rubric.Trim().ToUpper().Equals("COMPUTER SCIENCE"))
                {
                    lblrubric.Text = "CSCI";
                    DataTable dt = new DataTable();
                    string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
                    SqlConnection conrbc1 = new SqlConnection(constring);
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where CSCI=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "F");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewfound.DataSource = ds1;
                        GridViewfound.DataBind();
                    }
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where CSCI=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "C");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewcore.DataSource = ds1;
                        GridViewcore.DataBind();
                    }
                }
                if (rubric.Trim().ToUpper().Equals("COMPUTER ENGINEERING"))
                {
                    lblrubric.Text = "CENG";

                    string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
                    SqlConnection conrbc1 = new SqlConnection(constring);
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where CENG=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "F");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewfound.DataSource = ds1;
                        GridViewfound.DataBind();
                    }

                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where CENG=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "C");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewcore.DataSource = ds1;
                        GridViewcore.DataBind();
                    }





                }
                if (rubric.Trim().ToUpper().Equals("COMPUTER INFORMATION SYSTEMS"))
                {
                    lblrubric.Text = "CINF";
                    string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
                    SqlConnection conrbc1 = new SqlConnection(constring);
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where CINF=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "F");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewfound.DataSource = ds1;
                        GridViewfound.DataBind();
                    }

                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where CINF=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "C");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewcore.DataSource = ds1;
                        GridViewcore.DataBind();
                    }




                }
                if (rubric.Trim().ToUpper().Equals("SOFTWARE ENGINEERING"))
                {
                    lblrubric.Text = "SWEN";
                    string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
                    SqlConnection conrbc1 = new SqlConnection(constring);
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where SWEN=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "F");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewfound.DataSource = ds1;
                        GridViewfound.DataBind();
                    }
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where SWEN=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "C");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewcore.DataSource = ds1;
                        GridViewcore.DataBind();
                    }



                }
                if (rubric.Trim().ToUpper().Equals("STATISTICS"))
                {
                    lblrubric.Text = "STAT";
                    string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
                    SqlConnection conrbc1 = new SqlConnection(constring);
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where STAT=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "F");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewfound.DataSource = ds1;
                        GridViewfound.DataBind();
                    }
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where STAT=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "C");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewcore.DataSource = ds1;
                        GridViewcore.DataBind();
                    }



                }

                if (rubric.Trim().ToUpper().Equals("SYSTEMS ENGINEERING"))
                {
                    lblrubric.Text = "SENG";
                    string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
                    SqlConnection conrbc1 = new SqlConnection(constring);
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where SENG=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "F");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewfound.DataSource = ds1;
                        GridViewfound.DataBind();
                    }

                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where SENG=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "C");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewcore.DataSource = ds1;
                        GridViewcore.DataBind();
                    }




                }
                if (rubric.Trim().ToUpper().Equals("BIOTECHNOLOGY"))
                {
                    lblrubric.Text = "BIOT";
                    string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
                    SqlConnection conrbc1 = new SqlConnection(constring);
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where BIOT=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "F");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewfound.DataSource = ds1;
                        GridViewfound.DataBind();
                    }
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where BIOT=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "C");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewcore.DataSource = ds1;
                        GridViewcore.DataBind();
                    }
                }
                if (rubric.Trim().ToUpper().Equals("ENGINEERING MANAGEMENT"))
                {
                    lblrubric.Text = "EMGT";
                    string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
                    SqlConnection conrbc1 = new SqlConnection(constring);
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where EMGT=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "F");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewfound.DataSource = ds1;
                        GridViewfound.DataBind();
                    }
                    using (SqlDataAdapter sda1 = new SqlDataAdapter("select rubric,courseid,coursename,units from catalog where EMGT=@CORE", conrbc1))
                    {
                        sda1.SelectCommand.Parameters.AddWithValue("@CORE", "C");
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        GridViewcore.DataSource = ds1;
                        GridViewcore.DataBind();
                    }
                }
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
    }
}