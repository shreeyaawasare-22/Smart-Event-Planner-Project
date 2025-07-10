using System;
using System.Data;
using System.Web.UI.WebControls;

namespace MomentoProject
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEvents();
            }
        }

        protected void btnCreateEvent_Click(object sender, EventArgs e)
        {
            // Fetch values from textboxes
            string eventName = txtEventName.Text.Trim();
            string eventDate = txtEventDate.Text.Trim();
            string eventTime = txtEventTime.Text.Trim();
            string venue = txtVenue.Text.Trim();

            if (string.IsNullOrEmpty(eventName) || string.IsNullOrEmpty(eventDate) ||
                string.IsNullOrEmpty(eventTime) || string.IsNullOrEmpty(venue))
            {
                // Handle empty input validation
                return;
            }

            // Store the event in a session variable (for simplicity)
            DataTable dt = Session["Events"] as DataTable;
            if (dt == null)
            {
                dt = new DataTable();
                dt.Columns.Add("Event Name");
                dt.Columns.Add("Date");
                dt.Columns.Add("Time");
                dt.Columns.Add("Venue");
            }

            dt.Rows.Add(eventName, eventDate, eventTime, venue);
            Session["Events"] = dt;

            LoadEvents();
        }

        private void LoadEvents()
        {
            DataTable dt = Session["Events"] as DataTable;
            if (dt != null)
            {
                gvEvents.DataSource = dt;
                gvEvents.DataBind();
            }
        }
    }
}
