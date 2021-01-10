using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace BDayCardMaker
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //Set color options
                ddListColors.Items.Add("");
                ddListColors.Items.Add("Green");
                ddListColors.Items.Add("Blue");
                ddListColors.Items.Add("Red");
                ddListColors.Items.Add("Orange");
                ddListColors.Items.Add("Purple");
                
                //Set font options
                ddListFonts.Items.Add("");
                ddListFonts.Items.Add("Times New Roman");
                ddListFonts.Items.Add("Lucida Bright");
                ddListFonts.Items.Add("MV Boli");
                ddListFonts.Items.Add("Monotype Corsiva");
                ddListFonts.Items.Add("Comic Sans MS");

                //Set pic but don't show it initially
                imgOnCard.ImageUrl = "/Images/bdayCake.png";
                imgOnCard.Visible = false;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //Update color
            //panelBdayCard.Style["background-color"] = ddListColors.SelectedValue; this works too!
            panelBdayCard.BackColor = Color.FromName(ddListColors.SelectedValue);
            
            //Update font
            //lblCardGreeting.Style["font-family"] = ddListFonts.SelectedValue; this works too!
            lblCardGreeting.Font.Name = ddListFonts.SelectedValue;

            if ((!int.TryParse(txbxFontSize.Text, out int fontSize)) || fontSize < 0)
            {
                lblError.Text = "Choose a positive number between 6 and 72 for font size!";
                return;
            }
            else
            {
                lblError.Text = "";
                lblCardGreeting.Font.Size = int.Parse(txbxFontSize.Text);
                //OR ==> lblCardGreeting.Font.Size = FontUnit.Point(int.Parse(txbxFontSize.Text));
            }
            
            //Update text
            lblCardGreeting.Text = txbxGreeting.Text;
            
            //Update pic
            if (chkbxDefaultPic.Checked)
            {
                imgOnCard.Visible = true;
            }
            else
            {
                imgOnCard.Visible = false;
            }
        }
    }
}