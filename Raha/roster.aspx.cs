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
using System.Data;
using System.Collections.Specialized;
using System.Collections;

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
        DateTime dtnow = DateTime.Today;
        int Auth;
        //SQLiteConnection dbconn = new SQLiteConnection(@"Data Source=C:\inetpub\wwwroot\ra\Download\db.sqlite;Version=3;");
        //SQLiteConnection dbconn = new SQLiteConnection(@"Data Source=C:\Users\gollar1\Documents\VCE\Raha\ravent\Raha\Download\db.sqlite;Version=3;");
        SQLiteConnection dbconn = new SQLiteConnection(@"Data Source=C:\Users\sivakots\Documents\Visual Studio 2012\Projects\Raha-20180414T175030Z-001\Raha\Raha\Download\db.sqlite;Version=3;");

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
            //command.CommandText = "delete from shift where date like '7%' or date like '8%'";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Holiday','VCE','5/1/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','5/2/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','5/3/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','5/4/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','5/5/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','5/6/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','5/7/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','5/8/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Evening','VCE','5/9/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','5/10/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','5/11/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Oncall','VCE','5/12/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','5/13/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/14/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/15/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/16/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/17/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Morning','VCE','5/18/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','5/19/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','5/20/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Leave','VCE','5/21/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Leave','VCE','5/22/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Leave','VCE','5/23/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/24/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/25/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','5/26/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Weeklyoff','VCE','5/27/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/28/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/29/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/30/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('1138560','Sravani Gangavarapu','Afternoon','VCE','5/31/2018')";
            //command.ExecuteNonQuery();
            //command.CommandText = "select empid,name,shift,tower from shift";
            // SQLiteDataReader reader = command.ExecuteReader();
            //SQLiteDataAdapter sd
            //GetData(command.CommandText, dbconn);
            TextBox3.Attributes["value"] = TextBox3.Text;
            if (!IsPostBack)
            {
                GetData(DateTime.Today.Month.ToString(), dbconn);
                
            } dbconn.Close();
            //Auth = 0;
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
      
            getSQL();
        }
        


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetData(DateTime.Today.Month.ToString(), dbconn);
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

getSQL();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;

           getSQL();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = this.GridView1.Rows[e.RowIndex];
            var newValues = this.GetValues(row);


            using (SQLiteCommand cmd = new SQLiteCommand("UPDATE shift SET shift = @shift WHERE (empid = @id and date=@date)", dbconn))
            {
                cmd.Parameters.AddWithValue("shift", newValues["shift"]);
                cmd.Parameters.AddWithValue("id", GridView1.DataKeys[row.RowIndex]["ID"]);
                cmd.Parameters.AddWithValue("date", GridView1.DataKeys[row.RowIndex]["DATE"]);
                //cmd.Parameters.AddWithValue("NAME", newValues["NAME"]);

                //cmd.Parameters.AddWithValue("TOWER", newValues["TOWER"]);

                //cmd.Parameters.AddWithValue("SHIFT", GridView1.DataKeys[row.RowIndex]["ID"]);
                //cmd.Parameters.AddWithValue("Phone", newValues["Phone"]);

                try
                {
                    dbconn.Open();

                    if (cmd.ExecuteNonQuery().Equals(1))
                    {
                        //  lblMsg.Text 

                        GridView1.EditIndex = -1;

                        getSQL();
                    }
                }
                catch { }
            }
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
        protected void OnRowCreated(object sender, GridViewRowEventArgs e)
        {
            check_auth();
            if(Auth!=1)

           // if (!TextBox3.Text.Equals("HerHighness"))
                e.Row.Cells[0].Visible = false;
        }
        private IDictionary<string, object> GetValues(GridViewRow row)
        {
            IOrderedDictionary dictionary = new OrderedDictionary();

            foreach (System.Web.UI.Control control in row.Controls)
            {
                DataControlFieldCell cell = control as DataControlFieldCell;

                if ((cell != null) && cell.Visible)
                {
                    cell.ContainingField.ExtractValuesFromCell(dictionary, cell, row.RowState, true);
                }
            }

            IDictionary<string, object> values = new Dictionary<string, object>();

            foreach (DictionaryEntry de in dictionary)
            {
                values[de.Key.ToString()] = de.Value;
            }

            return values;
        }

        void getSQL()
        {
            if(dbconn.State== ConnectionState.Closed)
            dbconn.Open();
            command = new SQLiteCommand(dbconn);
            var dt = Calendar1.SelectedDate.ToShortDateString();
            if (Calendar1.SelectedDate.Date == DateTime.MinValue)
                GetData(DateTime.Today.Month.ToString(), dbconn);
            // dt = DateTime.Today.ToShortDateString();
            else
            {
                command.CommandText = "select empid as ID,name as NAME ,shift as SHIFT,tower as TOWER,date as DATE from shift where date='" + dt + "'";
                GetData(command.CommandText, dbconn);
            }
            dbconn.Close();
        }



       bool check_auth()
        {
            string fileName = "key.conf";
            string fl = Server.MapPath("~/Download/" + fileName);
            var content = File.ReadAllText(fl);
            if (content.Equals(TextBox3.Attributes["value"]))
            {
                Auth = 1;
                return true;
            }

                return false;

        }


               void insert_roster()
       {

           string sql = null,sql_check=null;
           SQLiteDataReader reader;

           DateTime firstDayThisMonth = new DateTime(dtnow.Year, dtnow.Month, 1);
           DateTime firstDaynextMonth = firstDayThisMonth.AddMonths(1);
           DateTime threemonths = firstDayThisMonth.AddMonths(3);
           DateTime lastDaytwomonths = threemonths.AddDays(-1);
           DateTime loopdate;
           Int32 cnt;
           //DateTime endOfLastDayNextMonth = firstDayPlusTwoMonths.AddTicks(-1);
               string dt1=dtnow.AddMonths(-1).ToString("M/d/yyyy");
               populate_employee_dropdown();
               populate_weekgrid();
               DropDownList1.Visible = true;
               GridView2.Visible = true;

           sql = "select empid as ID,name as NAME,tower as TOWER from shift where date='"+dt1+"'";
           sql_check = "select count(*) from shift where date='" + firstDaynextMonth.ToString("M/d/yyyy") + "'";
           try
           {

               command = new SQLiteCommand(dbconn);
               if (dbconn.State == ConnectionState.Closed)
                   dbconn.Open();
               SQLiteCommand cmd = new SQLiteCommand(sql, dbconn);
               SQLiteCommand cmd_check = new SQLiteCommand(sql_check, dbconn);
               cnt = Convert.ToInt32(cmd_check.ExecuteScalar());
               if (cnt < 1)
               {
               reader = cmd.ExecuteReader();


                   while (reader.Read())
                   {
                       loopdate = firstDaynextMonth;

                       while (loopdate <= lastDaytwomonths)
                       {

                           command.CommandText = "INSERT INTO shift (empid,name,tower,date) Values ('" + reader.GetValue(0) + "','" + reader.GetValue(1) + "','" + reader.GetValue(2) + "','" + loopdate.ToString("M/d/yyyy") + "')";
                           if (loopdate.DayOfWeek == DayOfWeek.Saturday || loopdate.DayOfWeek == DayOfWeek.Sunday)
                               command.CommandText = "INSERT INTO shift (empid,name,shift,tower,date) Values ('" + reader.GetValue(0) + "','" + reader.GetValue(1) + "','Weeklyoff','" + reader.GetValue(2) + "','" + loopdate.ToString("M/d/yyyy") + "')";

                           command.ExecuteNonQuery();

                           // MessageBox.Show("'" + reader.GetValue(0) + "' - '" + reader.GetValue(1) + "' - '" + reader.GetValue(2) + "'");
                           loopdate = loopdate.AddDays(1);
                       }
                   }
                   reader.Close();
                   cmd.Dispose();
                   dbconn.Close();
               }
           }
           catch (Exception ex)
           {
               MessageBox.Show("Can not open connection ! " + ex);
           }
       }


       protected void Button1_Click(object sender, EventArgs e)
       {

           if (check_auth())
               Button2.Visible = true;

       }

       protected void Button2_Click(object sender, EventArgs e)
       {
           
           insert_roster();
           Createrosterpnl.Visible = true;
           Button2.Visible = false;
           TextBox3.Visible = false;
           Button1.Visible = false;
       }

        void populate_employee_dropdown()
        {

            if (dbconn.State == ConnectionState.Closed)
                dbconn.Open();
            SQLiteCommand cmd = new SQLiteCommand("Select empid,name from shift where date='" + dtnow.ToString("M/d/yyyy")+"'", dbconn);

    SQLiteDataAdapter da = new SQLiteDataAdapter(cmd);

    DataTable dt=new DataTable();
    da.Fill(dt);

    DropDownList1.DataTextField = "name";
    DropDownList1.DataValueField = "empid";

    DropDownList1.DataSource = dt;
    DropDownList1.DataBind();
    dbconn.Close();
         }

       void populate_weekgrid()
        {


            DataTable dt = new DataTable();
            DataRow oItem = dt.NewRow();
            DataRow dr = dt.NewRow();
            DateTime firstDayThisMonth = new DateTime(dtnow.Year, dtnow.Month, 1);
            DateTime loopdate = firstDayThisMonth.AddMonths(1);
           BoundField bfield = new BoundField();

            dt.Columns.Add("Week Start");

            foreach (DataColumn col in dt.Columns)
            {
                bfield.DataField = col.ColumnName;
                bfield.HeaderText = col.ColumnName;
                GridView2.Columns.Add(bfield);
            }
            //dt.Columns.Add("Shift");




            while (loopdate <= firstDayThisMonth.AddMonths(2))
            {
                if (loopdate.DayOfWeek == DayOfWeek.Sunday)
                {

                    oItem[0] = loopdate.AddDays(1).ToString("M/d/yyyy");
                    dt.Rows.Add(oItem);
                    oItem = dt.NewRow();

                }
                loopdate = loopdate.AddDays(1);


            }
            dt.AcceptChanges();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

       protected void Button3_Click(object sender, EventArgs e)
       {
           DropDownList ddl;
           DateTime loopweek = DateTime.MinValue;


           String selectedValue=null;
           int temp;
           if (dbconn.State == ConnectionState.Closed)
               dbconn.Open();
           command = new SQLiteCommand(dbconn);
           if (GridView2.Rows.Count > 0)
           {
               temp = GridView2.Rows[0].Cells.Count;
               foreach (GridViewRow row in GridView2.Rows)
               {
                   for (int i = 0; i < temp; i++)
                   {
                       String header = GridView2.Columns[i].HeaderText;
                       if(header=="Shift")
                       {
                           ddl = GridView2.Rows[i].FindControl("DropDownList3") as DropDownList;
                           selectedValue = ddl.SelectedItem.Text.ToString();
                       }
                        String cellText = row.Cells[i].Text;
                       //String cellText = row.Cells[i].Text;
                       if(!string.IsNullOrEmpty(cellText))
                        loopweek = DateTime.ParseExact(cellText, "M/d/yyyy", System.Globalization.CultureInfo.InvariantCulture);

                       while (loopweek.DayOfWeek != DayOfWeek.Saturday && !(loopweek == DateTime.MinValue))
                       {

                           command.CommandText = "update shift  set shift='" + selectedValue + "' where date='" + loopweek.ToString("M/d/yyyy") + "' and empid='" + DropDownList1.SelectedValue + "'";
                           command.ExecuteNonQuery();
                           loopweek = loopweek.AddDays(1);

                       }
                   }
               }
           }

       }
    }

    
}
