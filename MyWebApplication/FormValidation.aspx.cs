using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApplication
{
    public partial class FormValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // Without this check, if the user disables JavaScript there is no guarantee the page is valid.
            {
                string message = string.Format("Your name is {0} and you are {1} years old. Your email is {3}. Your favorite color is {2}.", txtName.Text, txtAge.Text, ddlColor.SelectedValue, txtEmail.Text);
                ltMessage.Text = message;
            } 
            else
            {
                valSummaryForm.Visible = true;
            }
        }
    }
}