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
    public partial class roster : System.Web.UI.Page
    {
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
            //GetData(DateTime.Today.Month.ToString(), dbconn);
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
                if (selectCommand.Length < 3)
                    selectCommand = "select empid as ID,name as NAME ,shift as SHIFT,tower as TOWER,date as DATE from shift where instr(date," + selectCommand + ") in (1,2) ";


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
    }
}