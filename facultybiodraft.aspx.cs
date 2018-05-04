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
    public partial class facultybiodraft : System.Web.UI.Page
    {
        String Studentid, firstname, lastname, fullname, email, major, facultyadvisor, semester, year, rubric;
        protected void Page_Load(object sender, EventArgs e)
        {

            lblloginmsg.Visible = true;
            if (Session["sid"] == "")
            {
                Response.Redirect("homefaculty.aspx");
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


                }
            }
            if (!IsPostBack)
            {
                DropDownList2.DataSource = ddlRubric();
                DropDownList2.DataTextField = "rubric";
                DropDownList2.DataValueField = "rubric";
                DropDownList2.DataBind();

                DropDownList5.DataSource = ddlRubric();
                DropDownList5.DataTextField = "rubric";
                DropDownList5.DataValueField = "rubric";
                DropDownList5.DataBind();

                DropDownList8.DataSource = ddlRubric();
                DropDownList8.DataTextField = "rubric";
                DropDownList8.DataValueField = "rubric";
                DropDownList8.DataBind();

                DropDownList11.DataSource = ddlRubric();
                DropDownList11.DataTextField = "rubric";
                DropDownList11.DataValueField = "rubric";
                DropDownList11.DataBind();

                DropDownList14.DataSource = ddlRubric();
                DropDownList14.DataTextField = "rubric";
                DropDownList14.DataValueField = "rubric";
                DropDownList14.DataBind();

                DropDownList17.DataSource = ddlRubric();
                DropDownList17.DataTextField = "rubric";
                DropDownList17.DataValueField = "rubric";
                DropDownList17.DataBind();

                DropDownList23.DataSource = ddlRubric();
                DropDownList23.DataTextField = "rubric";
                DropDownList23.DataValueField = "rubric";
                DropDownList23.DataBind();

                DropDownList26.DataSource = ddlRubric();
                DropDownList26.DataTextField = "rubric";
                DropDownList26.DataValueField = "rubric";
                DropDownList26.DataBind();


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


                

            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            int elcount = 0;
            string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection cond = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cond;
            cond.Open();
            SqlTransaction tran = cond.BeginTransaction();
            cmd.Transaction = tran;
            try
            {
                if (TextBox2.Text != "")
                {
                    elcount = elcount + 1;
                    string query = "insert into studentcpsfinal (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,grade,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@grade,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                    // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                    cmd = new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);


                    cmd.Parameters.AddWithValue("@grade", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@rubric", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@courseid", TextBox2.Text);

                    cmd.Parameters.AddWithValue("@coursename", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@units", DropDownList28.SelectedValue);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 2);
                    cmd.Parameters.AddWithValue("@type", "E");

                    cmd.ExecuteNonQuery();



                }
                if (TextBox4.Text != "")
                {
                    elcount = elcount + 1;
                    string query = "insert into studentcpsfinal (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,grade,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@grade,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                    // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                    cmd = new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);


                    cmd.Parameters.AddWithValue("@grade", DropDownList4.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@rubric", DropDownList5.SelectedValue);
                    cmd.Parameters.AddWithValue("@courseid", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@coursename", DropDownList6.SelectedValue);
                    cmd.Parameters.AddWithValue("@units", DropDownList28.SelectedValue);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 2);
                    cmd.Parameters.AddWithValue("@type", "E");

                    cmd.ExecuteNonQuery();



                }
                if (TextBox6.Text != "")
                {
                    elcount = elcount + 1;
                    string query = "insert into studentcpsfinal (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,grade,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@grade,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                    // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                    cmd = new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);


                    cmd.Parameters.AddWithValue("@grade", DropDownList7.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@rubric", DropDownList8.SelectedValue);
                    cmd.Parameters.AddWithValue("@courseid", TextBox6.Text);

                    cmd.Parameters.AddWithValue("@coursename", DropDownList9.SelectedValue);
                    cmd.Parameters.AddWithValue("@units", DropDownList30.SelectedValue);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 2);
                    cmd.Parameters.AddWithValue("@type", "E");

                    cmd.ExecuteNonQuery();



                }
                if (TextBox8.Text != "")
                {
                    elcount = elcount + 1;
                    string query = "insert into studentcpsfinal (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,grade,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@grade,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                    // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                    cmd = new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);


                    cmd.Parameters.AddWithValue("@grade", DropDownList10.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@rubric", DropDownList11.SelectedValue);
                    cmd.Parameters.AddWithValue("@courseid", TextBox8.Text);

                    cmd.Parameters.AddWithValue("@coursename", DropDownList12.SelectedValue);
                    cmd.Parameters.AddWithValue("@units", DropDownList31.SelectedValue);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 2);
                    cmd.Parameters.AddWithValue("@type", "E");

                    cmd.ExecuteNonQuery();



                }
                if (TextBox10.Text != "")
                {
                    elcount = elcount + 1;
                    string query = "insert into studentcpsfinal (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,grade,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@grade,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                    // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                    cmd = new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);


                    cmd.Parameters.AddWithValue("@grade", DropDownList13.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@rubric", DropDownList14.SelectedValue);
                    cmd.Parameters.AddWithValue("@courseid", TextBox10.Text);

                    cmd.Parameters.AddWithValue("@coursename", DropDownList15.SelectedValue);
                    cmd.Parameters.AddWithValue("@units", DropDownList32.SelectedValue);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 2);
                    cmd.Parameters.AddWithValue("@type", "E");

                    cmd.ExecuteNonQuery();
                }
                if (TextBox12.Text != "")
                {
                    elcount = elcount + 1;
                    string query = "insert into studentcpsfinal (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,grade,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@grade,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                    // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                    cmd = new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);


                    cmd.Parameters.AddWithValue("@grade", DropDownList16.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", TextBox11.Text);
                    cmd.Parameters.AddWithValue("@rubric", DropDownList17.SelectedValue);
                    cmd.Parameters.AddWithValue("@courseid", TextBox12.Text);

                    cmd.Parameters.AddWithValue("@coursename", DropDownList18.SelectedValue);
                    cmd.Parameters.AddWithValue("@units", DropDownList33.SelectedValue);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 2);
                    cmd.Parameters.AddWithValue("@type", "C");

                    cmd.ExecuteNonQuery();



                }
                if (TextBox16.Text != "")
                {
                    elcount = elcount + 1;
                    string query = "insert into studentcpsfinal (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,grade,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@grade,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                    // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                    cmd = new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);


                    cmd.Parameters.AddWithValue("@grade", DropDownList22.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", TextBox15.Text);
                    cmd.Parameters.AddWithValue("@rubric", DropDownList23.SelectedValue);
                    cmd.Parameters.AddWithValue("@courseid", TextBox16.Text);

                    cmd.Parameters.AddWithValue("@coursename", DropDownList24.SelectedValue);
                    cmd.Parameters.AddWithValue("@units", DropDownList34.SelectedValue);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 2);
                    cmd.Parameters.AddWithValue("@type", "T");

                    cmd.ExecuteNonQuery();



                }
                if (TextBox18.Text != "")
                {
                    elcount = elcount + 1;
                    string query = "insert into studentcpsfinal (Studentid,firstname,lastname,fullname,email,major,facultyadvisor,grade,semester,rubric,courseid,coursename,units,draftyear,status,type)values(@Studentid,@firstname,@lastname,@fullname,@email,@major,@facultyadvisor,@grade,@semester,@rubric,@courseid,@coursename,@units,@draftyear,@status,@type)";
                    // cmd.CommandText = "insert into studentdraft values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "')";

                    cmd = new SqlCommand(query, cond, tran);
                    cmd.Parameters.AddWithValue("@Studentid", Studentid);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@fullname", fullname);

                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@facultyadvisor", facultyadvisor);


                    cmd.Parameters.AddWithValue("@grade", DropDownList25.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", TextBox17.Text);
                    cmd.Parameters.AddWithValue("@rubric", DropDownList26.SelectedValue);
                    cmd.Parameters.AddWithValue("@courseid", TextBox18.Text);

                    cmd.Parameters.AddWithValue("@coursename", DropDownList27.SelectedValue);
                    cmd.Parameters.AddWithValue("@units", DropDownList35.SelectedValue);

                    cmd.Parameters.AddWithValue("@draftyear", year);
                    cmd.Parameters.AddWithValue("@status", 2);
                    cmd.Parameters.AddWithValue("@type", "T");

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private DataSet ddlRubric()
        {
            DataSet ds = new DataSet();
            string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection conrbc1 = new SqlConnection(constring);
            using (SqlDataAdapter sda1 = new SqlDataAdapter("select distinct(rubric) from catalogue", conrbc1))
            {
                sda1.Fill(ds);
                return ds;
            }


        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList6.DataSource = courselist(DropDownList5.SelectedValue);
            DropDownList6.DataTextField = "coursename";
            DropDownList6.DataValueField = "coursename";
            DropDownList6.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.DataSource = courselist(DropDownList2.SelectedValue);
            DropDownList3.DataTextField = "coursename";
            DropDownList3.DataValueField = "coursename";
            DropDownList3.DataBind();

        }

        private DataSet courselist(String rubric)
        {
            DataSet ds = new DataSet();
            string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection conrbc1 = new SqlConnection(constring);
            using (SqlDataAdapter sda1 = new SqlDataAdapter("select coursename from catalog where rubric=@rubric", conrbc1))
            {
                sda1.SelectCommand.Parameters.AddWithValue("@rubric", rubric);
                sda1.Fill(ds);
                return ds;
            }

        }

        protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList9.DataSource = courselist(DropDownList8.SelectedValue);
            DropDownList9.DataTextField = "coursename";
            DropDownList9.DataValueField = "coursename";
            DropDownList9.DataBind();
        }

        protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList12.DataSource = courselist(DropDownList11.SelectedValue);
            DropDownList12.DataTextField = "coursename";
            DropDownList12.DataValueField = "coursename";
            DropDownList12.DataBind();
        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList15.DataSource = courselist(DropDownList14.SelectedValue);
            DropDownList15.DataTextField = "coursename";
            DropDownList15.DataValueField = "coursename";
            DropDownList15.DataBind();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = courseid(DropDownList3.SelectedValue);
            DropDownList28.DataSource = units(DropDownList13.SelectedValue);
            DropDownList28.DataTextField = "units";
            DropDownList28.DataValueField = "units";
            DropDownList28.DataBind();

        }

        private DataSet units(string coursename)
        {
            DataSet ds = new DataSet();
            string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection conrbc1 = new SqlConnection(constring);
            using (SqlDataAdapter sda = new SqlDataAdapter("select * from catalog where coursename=@coursename", conrbc1))
            {
                sda.SelectCommand.Parameters.AddWithValue("@coursename", rubric);
                sda.Fill(ds);
                return ds;
            }

        }

        private string courseid(String courseid)
        {
            string cid = null;

            string constring = ConfigurationManager.ConnectionStrings["cpsdb"].ConnectionString;
            SqlConnection conrbc1 = new SqlConnection(constring);
            SqlCommand sda1 = new SqlCommand("select * from catalog where coursename=@coursename", conrbc1);

            sda1.Parameters.AddWithValue("@coursename", courseid);
            conrbc1.Open();
            SqlDataReader dr = sda1.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    cid = dr["courseid"].ToString();
                }
            }
            return cid;




        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox4.Text = courseid(DropDownList6.SelectedValue);
            DropDownList29.DataSource = units(DropDownList6.SelectedValue);
            DropDownList29.DataTextField = "units";
            DropDownList29.DataValueField = "units";
            DropDownList29.DataBind();
        }

        protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox6.Text = courseid(DropDownList9.SelectedValue);
            DropDownList30.DataSource = units(DropDownList9.SelectedValue);
            DropDownList30.DataTextField = "units";
            DropDownList30.DataValueField = "units";
            DropDownList30.DataBind();
        }

        protected void DropDownList12_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox8.Text = courseid(DropDownList12.SelectedValue);
            DropDownList31.DataSource = units(DropDownList12.SelectedValue);
            DropDownList31.DataTextField = "units";
            DropDownList31.DataValueField = "units";
            DropDownList31.DataBind();
        }

        protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox10.Text = courseid(DropDownList15.SelectedValue);
            DropDownList32.DataSource = units(DropDownList15.SelectedValue);
            DropDownList32.DataTextField = "units";
            DropDownList32.DataValueField = "units";
            DropDownList32.DataBind();
        }

        protected void DropDownList17_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList18.DataSource = courselist(DropDownList17.SelectedValue);
            DropDownList18.DataTextField = "coursename";
            DropDownList18.DataValueField = "coursename";
            DropDownList18.DataBind();
        }

        protected void DropDownList23_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList24.DataSource = courselist(DropDownList23.SelectedValue);
            DropDownList24.DataTextField = "coursename";
            DropDownList24.DataValueField = "coursename";
            DropDownList24.DataBind();
        }

        protected void DropDownList26_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList27.DataSource = courselist(DropDownList26.SelectedValue);
            DropDownList27.DataTextField = "coursename";
            DropDownList27.DataValueField = "coursename";
            DropDownList27.DataBind();
        }

        protected void DropDownList18_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox12.Text = courseid(DropDownList18.SelectedValue);
            DropDownList33.DataSource = units(DropDownList18.SelectedValue);
            DropDownList33.DataTextField = "units";
            DropDownList33.DataValueField = "units";
            DropDownList33.DataBind();
        }

        protected void DropDownList24_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox16.Text = courseid(DropDownList24.SelectedValue);
            DropDownList34.DataSource = units(DropDownList24.SelectedValue);
            DropDownList34.DataTextField = "units";
            DropDownList34.DataValueField = "units";
            DropDownList34.DataBind();
        }

        protected void DropDownList27_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox18.Text = courseid(DropDownList27.SelectedValue);
            DropDownList35.DataSource = units(DropDownList27.SelectedValue);
            DropDownList35.DataTextField = "units";
            DropDownList35.DataValueField = "units";
            DropDownList35.DataBind();
        }

        
    }
}