using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectFees;

namespace MyWebApplication
{
    public partial class ProjectCalculation : System.Web.UI.Page
    {
        public decimal BasePrice = 100.00m;
        public string NoSelectionText = "(select your state to get the price)";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ltBasePrice.Text = BasePrice.ToString("C");
                ddlStates.DataSource = new States().StatesList;
                ddlStates.DataTextField = "Name";
                ddlStates.DataValueField = "TwoLetterCode";
                ddlStates.DataBind();
                ltCustomPrice.Text = NoSelectionText;
            }
            
        }

        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlStates.SelectedValue != "")
            {
                States states = new States();
                decimal fee = states.GetFeeForState(ddlStates.SelectedValue);
                decimal finalPrice = BasePrice + fee;
                ltCustomPrice.Text = finalPrice.ToString("C");
            }
            else
            {
                ltCustomPrice.Text = NoSelectionText;
            }
            
        }
    }
}