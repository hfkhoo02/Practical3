using System;

namespace Practical3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                lblTime.Text = "You are accessing this page on " +
                DateTime.Now.ToString();
            }

            calDepartDt.SelectedDate = DateTime.Now;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {    
                txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            float ticketPrice = 0.00f;
            int adult, child;
            int from = ddlFrom.SelectedIndex;
            int to = ddlTo.SelectedIndex;

            adult = Convert.ToInt16(txtAdult.Text);
            child = Convert.ToInt16(txtChild.Text);

            if ((from == 1 && to == 2) && (from == 2 && to == 1))
            {
                lblError.Visible = true;
                lblError.Text = "Sorry. We do not provide trip from " + ddlFrom.Text + " to " + ddlTo.Text;
                txtPrice.Text = string.Empty;
            }
            else if (from == 1 && to == 1)
            {
                ticketPrice = adult * 34.00f + child * 25.50f;
            }
            else if (from == 2 && to == 2)
            {
                ticketPrice = adult * 6.00f + child * 4.30f;
            }

            txtPrice.Text = ticketPrice.ToString("C2");
        }
    }
    
}