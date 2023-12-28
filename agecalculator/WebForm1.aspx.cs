using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace agecalculator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dtYear = new DataTable();
                dtYear.Columns.Add("Year", typeof(int));
                for (int i = 1960; i <= DateTime.Now.Year; i++)
                {
                    dtYear.Rows.Add(i);
                }
                ddlYears.DataTextField = "Year";
                ddlYears.DataValueField = "Year";
                ddlYears.DataSource = dtYear;
                ddlYears.DataBind();
                DataTable dtDate = new DataTable();
                dtDate.Columns.Add("Date", typeof(int));
                for (int i = 1; i <= 31; i++)
                {
                    dtDate.Rows.Add(i);
                }
                ddlDates.DataTextField = "Date";
                ddlDates.DataValueField = "Date";
                ddlDates.DataSource = dtDate;
                ddlDates.DataBind();
            }
        }

        protected void Btnage_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Now;
            string year = ddlYears.SelectedValue;
            string month = ddlMonths.SelectedValue;
            string date = ddlDates.SelectedValue;
            DateTime dob = Convert.ToDateTime(month + "/" + date + "/" + year);
            TimeSpan ts = today - dob;
            DateTime age = DateTime.MinValue + ts;
            int years = age.Year - 1;
            int months = age.Month - 1;
            int days = age.Day - 1;
            Txtage.Text = string.Format("{0} year/s {1} month/s {2} day/s old", years, months, days);
        }
    }
}