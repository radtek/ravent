using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Raha
{
    public partial class Contacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                string command = Request.QueryString["contact"];
                if(!string.IsNullOrWhiteSpace(command))
                {
                    if(command.Trim().ToUpper().Equals("VCE"))
                    {
                        DisplayVCEContacts();
                    }
                    else if (command.Trim().ToUpper().Equals("PEGA"))
                    {
                        DisplayPegaContacts();
                    }
                    else if (command.Trim().ToUpper().Equals("ZABBIX"))
                    {
                        DisplayZabbixContacts();
                    }
                    else
                    {
                        DisplayAllContacts();
                    }
                }
                else
                {
                    DisplayAllContacts();
                }



            }
        }
        public void DisplayVCEContacts()
        {
            VcePanel.Visible = true;
            PegaPanel.Visible = false;
            ZabbixPanel.Visible = false;
        }
        public void DisplayPegaContacts()
        {
            VcePanel.Visible = false;
            PegaPanel.Visible = true;
            ZabbixPanel.Visible = false;
        }
        public void DisplayZabbixContacts()
        {
            VcePanel.Visible = false;
            PegaPanel.Visible = false;
            ZabbixPanel.Visible = true;
        }
        public void DisplayAllContacts()
        {
            VcePanel.Visible = true;
            PegaPanel.Visible = true;
            ZabbixPanel.Visible = true;
        }
    }
}