using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Raha
{
    public partial class ActApplicationDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                string command = Request.QueryString["act"];
                if (!string.IsNullOrWhiteSpace(command))
                {
                    if (command.Trim().ToUpper().Equals("ACT"))
                    {
                        DisplayACT();
                    }
                    else if (command.Trim().ToUpper().Equals("XACT"))
                    {
                        DisplayXACT();
                    }

                }

            }
        }
        public void DisplayACT()
        {
            ACTPanel.Visible = true;
            XactPanel.Visible = false;
        }
        public void DisplayXACT()
        {
            ACTPanel.Visible = false;
            XactPanel.Visible = true;
        }
    }
}