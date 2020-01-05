using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CompanyProfile
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (Name.Text.ToString().Equals("") && Password.Text.ToString().Equals(""))
            {
                msg.InnerHtml = "Enter the suer namne or Passsword First ";
            }
            else {
                //check user name or password to open the details ofd the admin 
                if (Name.Text.ToString().Equals("Admin") && Password.Text.ToString().Equals("Admin")) {
                    Response.Redirect("Pannel.aspx");
                }
                else if(Name.Text.ToString().Equals("Admin") && !Password.Text.ToString().Equals("Admin"))
                {
                    msg.InnerHtml = "Please CHeck your password";
                }
                else if (!Name.Text.ToString().Equals("Admin") && Password.Text.ToString().Equals("Admin"))
                {
                    msg.InnerHtml = "Please CHeck your UserName";
                }
                else
                {
                    msg.InnerHtml = "Please CHeck your user name  and password ";
                }

            }
        }
    }
}