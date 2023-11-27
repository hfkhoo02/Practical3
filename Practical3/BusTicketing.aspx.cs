using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
                lblTime.Text = "You are accessing this page on " +
                DateTime.Now.ToString();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {    
                txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void calDepartDt_Load(object sender, EventArgs e)
        {
            txtDepartDt.Text = DateTime.Now.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlFrom.SelectedValue.ToString() == "Hentian Duta")
            {
                
            }
        }
    }
}