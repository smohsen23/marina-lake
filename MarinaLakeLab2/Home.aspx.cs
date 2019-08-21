using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarinaLakeLab2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbEmail.Text = "";
            tbPassword.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            MarinaCustomer registeredCustomer = new MarinaCustomer();
            registeredCustomer.Email = tbEmail.Text;
            registeredCustomer.Password = tbPassword.Text;
            int custID = MarinaCustomerDB.MarinaCustomerLogin(registeredCustomer);
            if (custID >=1 )
            {
                Session["CustomerID"] = custID;
                Response.Redirect("AvailableLeaseSlip.aspx");
            }
            else 
            {

                Response.Redirect("Registration.aspx");
            }
        }
    }
}