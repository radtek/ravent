using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Data.SQLite;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;


namespace Raha
{
    public partial class Home : System.Web.UI.Page
    {

        public static string link;
        private object webBrowser;
        private object webBrowser1;
        private DataGridView dataGridView1 = new DataGridView();
        private BindingSource bindingSource1 = new BindingSource();
        private SQLiteDataAdapter dataAdapter = new SQLiteDataAdapter();
        SQLiteCommand command;
        SQLiteCommandBuilder commandBuilder;
        private DataSet dset = new DataSet();
        DataTable table = new DataTable();
        //SQLiteConnection dbconn = new SQLiteConnection(@"Data Source=C:\inetpub\wwwroot\ra\db.sqlite;Version=3;");
        SQLiteConnection dbconn = new SQLiteConnection(@"Data Source=C:\Users\gollar1\Documents\Pega\Raha\Raha\Raha\Download\db.sqlite;Version=3;");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData(DateTime.Today.Month.ToString(), dbconn);
        }
        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchCustomers(string prefixText, int count)
        {

            List<string> links = new List<string>();
            string line;

            System.IO.StreamReader file = new System.IO.StreamReader(AppDomain.CurrentDomain.BaseDirectory + @"Raha.Master");
            while ((line = file.ReadLine()) != null)
            {
                //Response.Write(line);  
                Regex regexObj = new Regex("<a[^>]*? href=\"(?<url>[^\"]+)\"[^>]*?>(?<text>.*?)<.*?a>", RegexOptions.Singleline);
                var matches = regexObj.Matches(line);
                foreach (Match m in matches)
                {
                    if (m.Groups["text"].Value.ToString().ToLower().Contains(prefixText.ToLower()))
                        links.Add(m.Groups["text"].Value.ToString());
                    //Console.WriteLine("URL: " + m.Groups["url"].Value + " -- Text = " + m.Groups["text"].Value);
                }

            }
            file.Close();

            file = new System.IO.StreamReader(AppDomain.CurrentDomain.BaseDirectory + @"ActApplicationDetails.aspx");
            while ((line = file.ReadLine()) != null)
            {
                //Response.Write(line);  
                Regex regexObj = new Regex("<td class=.(xl6714219|xl6417156|xl6817156|xl6914219|xl6517156).*?>(?<text>.*?)<.*?td>", RegexOptions.Singleline);
                var matches = regexObj.Matches(line);
                foreach (Match m in matches)
                {
                    if (m.Groups["text"].Value.ToString().ToLower().Contains(prefixText.ToLower()))
                        if(!links.Contains(m.Groups["text"].Value.ToString()))
                        links.Add(m.Groups["text"].Value.ToString());
                    //Console.WriteLine("URL: " + m.Groups["url"].Value + " -- Text = " + m.Groups["text"].Value);
                }

            }
            file.Close();
            return links;

        }
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

            roster.Visible = false;
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
                        linkslist.Text += line + "</br></br>";
                    //Console.WriteLine("URL: " + m.Groups["url"].Value + " -- Text = " + m.Groups["text"].Value);
                }

            }
            string divEnd = @"</ul></div>";
            linkslist.Text += divEnd;
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


        protected void LinkButton23_Click(object sender, EventArgs e)
        {
            roster.Visible = true;
            //Calendar1.SelectedDates.Clear();
            //SQLiteConnection.CreateFile("db.sqlite");
            // SQLiteConnection dbconn = new SQLiteConnection("Data Source=C:\\inetpub\\wwwroot\\db.sqlite;Version=3;");
            dbconn.Open();

            //string sql = "create table shift(empid varchar(10), name varchar(50), stype varchar(20),tower varchar(10),date DATETIME)";

            //command = new SQLiteCommand(sql,dbconn);
            //string sql = "alter table shift rename to shift_old";
            //command = new SQLiteCommand(sql,dbconn);
            //command.ExecuteNonQuery();
            //string sql1 = "create table shift(EMPID varchar(10), NAME varchar(50), SHIFT varchar(20),TOWER varchar(10),DATE varchar(10))";
            //command = new SQLiteCommand(sql1,dbconn);
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) select empid,name,shift,tower,date from shift_old";
            //command.ExecuteNonQuery();
            //command.ExecuteNonQuery();
            //command = new SQLiteCommand(dbconn);
            //command.CommandText = "delete from shift where empid='1138560'";
            //command.ExecuteNonQuery();
            /*command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','4/1/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/2/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/3/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/4/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/5/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/6/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','4/7/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','4/8/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/9/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/10/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/11/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/12/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','4/13/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','4/14/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','4/15/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','4/16/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','4/17/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','4/18/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','4/19/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','4/20/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Oncall','VCE','4/21/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','4/22/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','4/23/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','4/24/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','4/25/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','4/26/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','4/27/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','4/28/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','4/29/2018')";
            command.ExecuteNonQuery();
            command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','4/30/2018')";
            command.ExecuteNonQuery();*/
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu ','Weeklyoff','VCE','3/31/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "select empid,name,shift,tower from shift";
            // SQLiteDataReader reader = command.ExecuteReader();
            //SQLiteDataAdapter sd
            //GetData(command.CommandText, dbconn);
            GetData(DateTime.Today.Month.ToString(), dbconn);
            dbconn.Close();






        }


        private void GetData(string selectCommand, SQLiteConnection dbconn)
        {

            try
            {
                if (selectCommand.Length<3)
                    selectCommand = "select empid as ID,name as NAME ,shift as SHIFT,tower as TOWER,date as DATE from shift where instr(date,"+selectCommand+") in (1,2) ";


                dbconn.CreateCommand();
                // Create a new data adapter based on the specified query.
                dataAdapter = new SQLiteDataAdapter(selectCommand, dbconn);

                // Create a command builder to generate SQL update, insert, and 
                // delete commands based on selectCommand. These are used to 
                // update the database.
                commandBuilder = new SQLiteCommandBuilder(dataAdapter);
                dset.Reset();

                // Populate a new data table and bind it to the BindingSource.

                table.Locale = System.Globalization.CultureInfo.InvariantCulture;
                dataAdapter.Fill(dset);
                table = dset.Tables[0];
                GridView1.DataSource = table.DefaultView;
                GridView1.DataBind();


                // Resize the DataGridView columns to fit the newly loaded content.
                dataGridView1.AutoResizeColumns(
                    DataGridViewAutoSizeColumnsMode.AllCellsExceptHeader);
            }
            catch (SQLiteException)
            {
                MessageBox.Show("To run this example, replace the value of the " +
                    "connectionString variable with a connection string that is " +
                    "valid for your system.");
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dbconn.Open();
            command = new SQLiteCommand(dbconn);
            var dt = Calendar1.SelectedDate.ToShortDateString();
            if (Calendar1.SelectedDate.Date == DateTime.MinValue)
                GetData(DateTime.Today.Month.ToString(), dbconn);
            // dt = DateTime.Today.ToShortDateString();
            else
            {
                command.CommandText = "select empid as ID,name as NAME ,shift as SHIFT,tower as TOWER from shift where date='" + dt + "'";
                GetData(command.CommandText, dbconn);
            }
            dbconn.Close();
            
        }



        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetData(DateTime.Today.Month.ToString(), dbconn);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            roster.Visible = false;
        }

        protected void VCEContacts_Click(object sender, EventArgs e)
        {
            VcePanel.Visible = true;
            PegaPanel.Visible = false;
            ZabbixPanel.Visible = false;
        }
        protected void PegaContacts_Click(object sender, EventArgs e)
        {
            VcePanel.Visible = false;
            PegaPanel.Visible = true;
            ZabbixPanel.Visible = false;
        }
        protected void ZabbixContacts_Click(object sender, EventArgs e)
        {
            VcePanel.Visible = false;
            PegaPanel.Visible = false;
            ZabbixPanel.Visible = true;
        }



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