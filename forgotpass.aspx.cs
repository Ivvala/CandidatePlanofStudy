using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
namespace CandidatePlanofStudy
{
    public partial class forgotpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Boolean emailchekc = false;
            lblmsg.Visible = true;
            string cs = ConfigurationManager.ConnectionStrings["eservicesdb"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);




            lblmsg.Visible = true;
            string password = null;
            string email = null;


            string selcmd = "select * from student where email=@sid";
            SqlCommand cmdp = new SqlCommand(selcmd, con);


            cmdp.Parameters.AddWithValue("@sid", txtuid.Text);

            con.Open();

            SqlDataReader drp = cmdp.ExecuteReader();
            if (drp.HasRows)
            {
                while (drp.Read())
                {
                    password = drp["password"].ToString();
                    email = drp["email"].ToString();
                }
                if (!string.IsNullOrEmpty(password))
                {
                    emailchekc = true;
                    lblmsg.Text = password;
                    MailMessage msg = new MailMessage("crazyheadscps@gmail.com", email.Trim());
                    msg.Subject = "Password Recovery";
                    msg.Body = string.Format("<h3> hello , Your password is <span style='color:green;font-weight:bold;font-size:30px;'>{0} </span> <br> Regards ,<br> Admin team</h3>", password);
                    msg.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential netcred = new NetworkCredential();
                    netcred.UserName = "crazyheadscps@gmail.com";
                    netcred.Password = "uhclcps@2017";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = netcred;
                    smtp.Port = 587;
                    smtp.Send(msg);
                    lblmsg.Text = "Your password has been send  ";
                }
            }




            con.Close();



            string selcmd1 = "select * from faculty where email=@sid";
            SqlCommand cmdp1 = new SqlCommand(selcmd1, con);


            cmdp1.Parameters.AddWithValue("@sid", txtuid.Text);

            con.Open();

            SqlDataReader drp1 = cmdp1.ExecuteReader();
            if (drp1.HasRows)
            {
                while (drp1.Read())
                {
                    password = drp1["password"].ToString();
                    email = drp1["email"].ToString();
                }
                if (!string.IsNullOrEmpty(password))
                {
                    emailchekc = true;
                    lblmsg.Text = password;
                    MailMessage msg = new MailMessage("crazyheadscps@gmail.com", email.Trim());
                    msg.Subject = "Password Recovery";
                    msg.Body = string.Format("<h3> hello , Your password is <span style='color:green;font-weight:bold;font-size:30px;'>{0} </span> <br> Regards ,<br> Admin team</h3>", password);
                    msg.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential netcred = new NetworkCredential();
                    netcred.UserName = "crazyheadscps@gmail.com";
                    netcred.Password = "uhclcps@2017";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = netcred;
                    smtp.Port = 587;
                    smtp.Send(msg);
                    lblmsg.Text = "Your password has been send  ";
                }
            }
            con.Close();





            string selcmd2 = "select * from academicadvisor where email=@sid";
            SqlCommand cmdp2 = new SqlCommand(selcmd2, con);


            cmdp2.Parameters.AddWithValue("@sid", txtuid.Text);

            con.Open();

            SqlDataReader drp2 = cmdp2.ExecuteReader();
            if (drp2.HasRows)
            {
                while (drp2.Read())
                {
                    password = drp2["password"].ToString();
                    email = drp2["email"].ToString();
                }
                if (!string.IsNullOrEmpty(password))
                {
                    emailchekc = true;
                    lblmsg.Text = password;
                    MailMessage msg = new MailMessage("crazyheadscps@gmail.com", email.Trim());
                    msg.Subject = "Password Recovery";
                    msg.Body = string.Format("<h3> hello , Your password is <span style='color:green;font-weight:bold;font-size:30px;'>{0} </span> <br> Regards ,<br> Admin team</h3>", password);
                    msg.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential netcred = new NetworkCredential();
                    netcred.UserName = "crazyheadscps@gmail.com";
                    netcred.Password = "uhclcps@2017";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = netcred;
                    smtp.Port = 587;
                    smtp.Send(msg);
                    lblmsg.Text = "Your password has been send  ";
                }
               
                
            }
            if(emailchekc)
            {
                lblmsg.Text = "Your password has been sent to your emaild id";

            }
            else
            {
                lblmsg.Text="Invalid Userid";
            }
           

            con.Close();





        }
    }
    }
