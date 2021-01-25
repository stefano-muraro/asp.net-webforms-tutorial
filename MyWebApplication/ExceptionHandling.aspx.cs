using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApplication
{
    public partial class ExceptionHandling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = string.Empty;
            try
            {
                decimal expectedDecimal = decimal.Parse(txtDecimal.Text);
                message = "Your decimal is: " + expectedDecimal;
            }
            catch (Exception ex) // Avoid yellow screen of dead
            {
                message = "Something went wrong: " + ex.Message;
            }

            lblMessage.Text = message;
            lblMessage.Visible = true;
        }

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            // See "customErrors" tag in Web.config
            decimal expectedDecimal = decimal.Parse(txtDecimal1.Text);
            string message = "Your decimal is: " + expectedDecimal;
            lblMessage1.Text = message;
            lblMessage1.Visible = true;
        }
    }
}