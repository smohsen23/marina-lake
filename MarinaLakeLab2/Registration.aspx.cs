using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace MarinaLakeLab2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //C:\Users\786608\Desktop\Marina\MarinaLakeLab2\App_Code\MarinaCustomerDB.cs
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (tbPassword.Text == tbPasswordConfirmation.Text)
            {
                MarinaCustomer NewCustomer = new MarinaCustomer();
                NewCustomer.FirstName = tbFirstName.Text;
                NewCustomer.LastName = tbLastName.Text;
                NewCustomer.Phone = tbPhone.Text;
                NewCustomer.City = tbCity.Text;
                NewCustomer.Email = tbEmail.Text;
                NewCustomer.Password = tbPassword.Text;

                int success = MarinaCustomerDB.AddMarinaCustomer(NewCustomer);

                if (Convert.ToString(success) != "")
                {
                    Response.Write("<script>alert('Sucessfully Registered');</script>");
                    Response.Redirect("LeaseSlip.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Registration Unsuccessful');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('New Password doesnt match');</script>");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbFirstName.Text = "";
            tbLastName.Text = "";
            tbPhone.Text = "";
            tbCity.Text = "";
            tbEmail.Text = "";
            tbPassword.Text = "";
            tbPasswordConfirmation.Text = "";
        }
    }
}