using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Diagnostics;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Raha
{
    public partial class Raha1 : System.Web.UI.MasterPage
    {
        public static string link;
        protected void Page_Load(object sender, EventArgs e)
        {

             
        }
        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]

        public void ser1_ServerClick(object sender, EventArgs e)
        {
            string fileName = "Default.rdp";
            string filePath = Server.MapPath("~/Download/" + fileName);
            try
            {
                //bd.Style["background-image"] = "";


                link = ((LinkButton)sender).Text;
                Label1.Visible = false;
                Process rdcProcess = new Process();


                string executable = Environment.ExpandEnvironmentVariables(@"%SystemRoot%\system32\mstsc.exe");
                //string executable = Environment.ExpandEnvironmentVariables(@"C:\Windows\system32\mstsc.exe");


                string usrname = System.Environment.UserName;
                Response.Write(usrname);
                if (executable != null)
                {
                    int n = filerw(link + '+' + usrname);
                    if (n == 1)
                        myenDiv.Visible = true;
                    else
                    {
                        UpdateRDPFile(link, filePath);
                        // Download RDP file
                        DownLoadFile(filePath);
                    }
                }
            }
            catch (Exception ex)
            {
                string script = "<script>alert('" + ex.Message + "');</script>";
                if (!Page.IsStartupScriptRegistered("myErrorScript"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myErrorScript", script);
                }
            }


        }
        private int filerw(string p)
        {
            string fileName = "info.usr";
            string fl = Server.MapPath("~/Download/" + fileName);



            if (File.Exists(fl))
            {

                var lines = File.ReadAllText(fl);
                if (lines.Contains(p))
                    return (0);
                using (StreamWriter sw = File.AppendText(fl))
                {
                    sw.WriteLine(p);
                }
                return (1);



            }
            else
            {
                using (StreamWriter sw = File.AppendText(fl))
                {
                    sw.WriteLine(p);
                }

                return (1);
            }
            // 	throw new NotImplementedException();
        }
        [System.Security.Permissions.PermissionSet(System.Security.Permissions.SecurityAction.Demand, Name = "FullTrust")]
        protected void Button1_Click1(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.Panel pn1 = (System.Web.UI.WebControls.Panel)ContentPlaceHolder1.FindControl("ACTPanel");
            pn1.Visible = false;
            pn1 = (System.Web.UI.WebControls.Panel)ContentPlaceHolder1.FindControl("XactPanel");
            pn1.Visible = false;
            int k=0;
            //roster.Visible = false;
            myenDiv.Visible = false;
            //Label1.Visible = true;
            LiteralControl linkslist = new LiteralControl();
            string divStart = @"<div id='linkslist' style='display:inline-block; background-color:LightBlue'><ul class='navbar-nav mr-auto'>";
            linkslist.Text += divStart;

            string line;
            
            System.IO.StreamReader file = new System.IO.StreamReader(AppDomain.CurrentDomain.BaseDirectory + @"Home.aspx");

            while ((line = file.ReadLine()) != null)
            {
                //Response.Write(line);  
                Regex regexObj = new Regex("<a[^>]*? href=\"(?<url>[^\"]+)\"[^>]*?>(?<text>.*?)<.*?a>", RegexOptions.Singleline);
                var matches = regexObj.Matches(line);
                foreach (Match m in matches)
                {
                    if (m.Groups["text"].Value.ToString().ToLower().Equals(txtContactsSearch.Text.ToLower()))
                    {
                        linkslist.Text += line + "</br></br>";
                    }  
                    //Console.WriteLine("URL: " + m.Groups["url"].Value + " -- Text = " + m.Groups["text"].Value);
                }

            }
            string divEnd = @"</ul></div>";
            linkslist.Text += divEnd;
            file = new System.IO.StreamReader(AppDomain.CurrentDomain.BaseDirectory + @"ActApplicationDetails.aspx");
            string tabStart = @"<table border='1' cellpadding='0' cellspacing='0' width='1633' style='border-collapse: collapse; table-layout: fixed; width: 1224pt; background-color: white'>
 <col class=xl7514219 width=183 style='mso-width-source:userset;mso-width-alt:
 6400;width:138pt'>
 <col class=xl6314219 width=731 style='mso-width-source:userset;mso-width-alt:
 25530;width:549pt'>
 <col width=227 span=2 style='mso-width-source:userset;mso-width-alt:7912;
 width:170pt'> <tr height=19 style='height:14.5pt'>
  <td class=xl6614219 width=183 style='border-top:none;width:138pt'>Application</td>
  <td class=xl6614219 width=731 style='border-top:none;border-left:none;
  width:549pt'>Application Description</td>
  <td class=xl6614219 width=227 style='border-left:none;width:170pt'>Server Details</td>
  <td class=xl6614219 width=227 style='border-left:none;width:170pt'>IP Address</td>
 </tr><tr>";
            linkslist.Text += tabStart;
            while ((line = file.ReadLine()) != null)
            {
                //Response.Write(line);  
                Regex regexObj = new Regex("<td class=.(xl6714219|xl6417156).*?>(?<text>.*?)<.*?td>", RegexOptions.Singleline);
                if(k==1)
                {
                   line= line.Replace('\uFFFD', ' ');
                    linkslist.Text += line ;
                    if(line.Contains("</tr>"))
                    k=0;
                }

               var matches = regexObj.Matches(line);
                foreach (Match m in matches)
                {
                    if (m.Groups["text"].Value.ToString().ToLower().Equals(txtContactsSearch.Text.ToLower()))
                    {
                        linkslist.Text += line + "</br></br>";
                        k=1;
                    }
                    //Console.WriteLine("URL: " + m.Groups["url"].Value + " -- Text = " + m.Groups["text"].Value);
                }

            }
            file.Close();
            if (linkslist.Text.Length > 100)
                Label1.Style["display"] = "block";
            this.Controls.Add(linkslist);
            file.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string fileName = "Default.rdp";
            string filePath = Server.MapPath("~/Download/" + fileName);
            Process rdcProcess = new Process();
            string executable = Environment.ExpandEnvironmentVariables(@"%SystemRoot%\system32\mstsc.exe");
            rdcProcess.StartInfo.FileName = Environment.ExpandEnvironmentVariables(@"%SystemRoot%\system32\cmdkey.exe");
            rdcProcess.StartInfo.Arguments = " /generic:" + link + " /user:" + TextBox1.Text + " /pass:" + TextBox2.Text;
            rdcProcess.Start();
            UpdateRDPFile(link, filePath);
            // Download RDP file
            DownLoadFile(filePath);

        }
        /*[System.Security.Permissions.PermissionSet(System.Security.Permissions.SecurityAction.Demand, Name = "FullTrust")] 
        protected void txtContactsSearch_ValueChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
            LiteralControl linkslist = new LiteralControl();
            string divStart = @"<div id='linkslist'><ul class='list-group'>";
            linkslist.Text += divStart;

            string line;

            System.IO.StreamReader file = new System.IO.StreamReader(AppDomain.CurrentDomain.BaseDirectory + @"Home.aspx");
            while ((line = file.ReadLine()) != null)
            {
                //Response.Write(line);  
                Regex regexObj = new Regex("<a[^>]*? href=\"(?<url>[^\"]+)\"[^>]*?>(?<text>.*?)<.*?a>", RegexOptions.Singleline);
                var matches = regexObj.Matches(line);
                foreach (Match m in matches)
                {
                    if (m.Groups["text"].Value.ToString().ToLower().Equals(txtContactsSearch.Text.ToLower()))
                        linkslist.Text += line + "</br></br>";
                    //Console.WriteLine("URL: " + m.Groups["url"].Value + " -- Text = " + m.Groups["text"].Value);
                }

            }
            string divEnd = @"</ul></div>";
            linkslist.Text += divEnd;
            this.Controls.Add(linkslist);
            file.Close();
        }*/
        private void UpdateRDPFile(string IPAddress, string filePath)
        {
            StringBuilder newFile = new StringBuilder();
            string temp = "";
            string[] fileToUpdate = File.ReadAllLines(filePath);
            foreach (string line in fileToUpdate)
            {
                if (line.Contains("full address:s:"))
                {
                    temp = temp.Insert(0, "full address:s:" + IPAddress);
                    newFile.Append(temp + "\r\n");
                    continue;
                }
                if (line.Contains("username:s:"))
                {
                    temp = "";
                    temp = temp.Insert(0, "username:s:" + TextBox1.Text);
                    newFile.Append(temp + "\r\n");
                    continue;
                }
                newFile.Append(line + "\r\n");
            }
            File.WriteAllText(filePath, newFile.ToString());
        }
        private void DownLoadFile(string filePath)
        {
            // get file object as FileInfo
            System.IO.FileInfo file = new System.IO.FileInfo(filePath);
            // -- if the file exists on the server
            if (file.Exists)
            {
                // set appropriate headers
                Response.Clear();
                Response.AddHeader("Content-Disposition", ("attachment; filename=" + file.Name));
                Response.AddHeader("Content-Length", file.Length.ToString());
                Response.ContentType = "application/octet-stream";
                Response.TransmitFile(file.FullName);
                Response.End();
                // if file does not exist
            }
            else
            {
                Response.Write("This file does not exist.");
            }
        }
        /*private void Time(Web time)
        {
            Response.Write("<br/> " + HttpContext.Current.Request.Url.Host);
            Response.Write("<br/> " + HttpContext.Current.Request.Url.Authority);
            Response.Write("<br/> " + HttpContext.Current.Request.Url.Port);
            Response.Write("<br/> " + HttpContext.Current.Request.Url.AbsolutePath);
            Response.Write("<br/> " + HttpContext.Current.Request.ApplicationPath);
            Response.Write("<br/> " + HttpContext.Current.Request.Url.AbsoluteUri);
            Response.Write("<br/> " + HttpContext.Current.Request.Url.PathAndQuery);
        }*/
        /*  protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
          {
              DataTable dt = table as DataTable;
              if (dt != null)
              {
                  DataView dataView = new DataView(dt);
                  dataView.Sort = e.SortExpression + " " + GetSortDirection(e.SortDirection);
                  GridView1.DataSource = dataView;
                  GridView1.DataBind();
              }
             // dt.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortDirection);
              //GridView1.DataSource = dt;
              //GridView1.DataBind();
          }

          private string GetSortDirection(SortDirection sortDirection)
          {
              string newSortDirection = string.Empty;
              switch (sortDirection)
              {
                  case SortDirection.Ascending:
                      newSortDirection = "ASC";
                      break;
                  case SortDirection.Descending:
                      newSortDirection = "DESC";
                      break;
              }
              return newSortDirection;
          }

          */

    }
}