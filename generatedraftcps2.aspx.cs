using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CandidatePlanofStudy
{
    public partial class generatedraftcps2 : System.Web.UI.Page
    {
        String Studentid,firstname,lastname,fullname,email,major,facultyadvisor,semester,year,rubric;
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
                        cpsfaculty.Text = facultyadvisor;

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

                    con.Close();


                }


                else
                {
                    Response.Write("Invalid Credentials");
                    con.Close();
                }

            
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection cond= new SqlConnection(constring);
           SqlCommand cmd = new SqlCommand();
            cmd.Connection = cond; 
            cond.Open();
            SqlTransaction tran= cond.BeginTransaction();
            cmd.Transaction = tran;
            
            

            try
            {
                foreach (GridViewRow row in GridViewfound.Rows)
                {
                    CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                       // CheckBox chkRow =( row.FindControl("CheckBox1") as CheckBox);
                        if (chkRow.Checked)
                        {
                            string rubricg = row.Cells[1].Text;
                            string courseid = row.Cells[2].Text;
                            string coursename = row.Cells[3].Text;
                            string units = row.Cells[4].Text;
                            string query = "insert into studentdraft (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                            // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                            cmd = new SqlCommand(query, cond, tran);
                            cmd.Parameters.AddWithValue("@Studentid", Studentid);
                            cmd.Parameters.AddWithValue("@firstname", firstname);
                            cmd.Parameters.AddWithValue("@lastname", lastname);
                            cmd.Parameters.AddWithValue("@fullname", fullname);

                            cmd.Parameters.AddWithValue("@email", email);
                            cmd.Parameters.AddWithValue("@major", major);
                            cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);
                            cmd.Parameters.AddWithValue("@semester", semester);


                            cmd.Parameters.AddWithValue("@rubric", rubricg);
                            cmd.Parameters.AddWithValue("@courseid", courseid);
                            cmd.Parameters.AddWithValue("@coursename", coursename);
                            cmd.Parameters.AddWithValue("@units", units);

                            cmd.Parameters.AddWithValue("@draftyear", year);
                            cmd.Parameters.AddWithValue("@status", 1);
                            cmd.Parameters.AddWithValue("@type", "F");




                            cmd.ExecuteNonQuery();
                            
                        }
                   
                }
                foreach (GridViewRow g1 in GridViewcore.Rows)
                {



                    string rubricg = g1.Cells[0].Text;
                    string courseid = g1.Cells[1].Text;
                    string coursename = g1.Cells[2].Text;
                    string units = g1.Cells[3].Text;
                    string query = "insert into studentdraft (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                 // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";
                   
                    cmd= new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);
                    cmd.Parameters.AddWithValue("@semester", semester);


                    cmd.Parameters.AddWithValue("@rubric", rubricg);
                    cmd.Parameters.AddWithValue("@courseid", courseid);
                    cmd.Parameters.AddWithValue("@coursename", coursename);
                    cmd.Parameters.AddWithValue("@units", units);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 1);
                    cmd.Parameters.AddWithValue("@type", "C");
                   
                   


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
                cond.Close();
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