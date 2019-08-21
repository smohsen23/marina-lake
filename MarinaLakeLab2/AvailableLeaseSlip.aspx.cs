using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarinaLakeLab2
{
    public partial class About : Page
    {
        //get currant customer ID
        int custID;

        protected void Page_Load(object sender, EventArgs e)
        {
            //load the custID from Session

            if (Session["CustomerID"] != null)
                custID = (int)Session["CustomerID"];
        }

        //every time customer click on select add the lease to row
        protected void gvAvailableLeaseSlip_SelectedIndexChanged(object sender, EventArgs e)
        {
            //get slipid of row selected
            if (gvAvailableLeaseSlip.SelectedIndex > -1)
            {
                //get the id from the row selected
                var selectedrow = gvAvailableLeaseSlip.SelectedRow;
                string cellID = selectedrow.Cells[1].Text;
                //cellID will be my lease ID
                int slipID = Convert.ToInt32(cellID);
                //add a row to the lease table for this customer ID and leaseID
                SqlConnection con = MarinaDB.GetConnection();
                string insertStatement = "INSERT INTO Lease (SlipID,CustomerID) " +
                                         "VALUES(@SlipID,@CustomerID)";
                SqlCommand cmd = new SqlCommand(insertStatement, con);
                cmd.Parameters.AddWithValue("@SlipID", slipID);
                cmd.Parameters.AddWithValue("@CustomerID", custID);


                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery(); // run the insert command
                                           // get the generated ID - current identity value for  Lease table
                    string selectQuery = "SELECT IDENT_CURRENT('Lease') FROM Lease";
                    SqlCommand selectCmd = new SqlCommand(selectQuery, con);
                    int LeaseID = Convert.ToInt32(selectCmd.ExecuteScalar()); // single value
                                                                              // typecase (int) does NOT work!
                                                                              //change button text from select to succefuly leased
                    selectedrow.Cells[0].Text = "Succefuly leased";
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }

            }

        }

        protected void btnShowSlips_Click(object sender, EventArgs e)
        {
            Response.Redirect("LeaseSlip.aspx");
        }
    }
}