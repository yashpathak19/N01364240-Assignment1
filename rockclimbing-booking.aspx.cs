using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01364240_assignment1
{
    public partial class rockclimbing_booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                string Customer_Fname = customer_fname.Text.ToString();
                string Customer_Lname = customer_lname.Text.ToString();
                string Customer_Email = customer_email.Text.ToString();
                string Customer_Phonenumber = customer_phonenumber.Text.ToString();
                string Customer_Bookingdate = customer_bookingdate.Text.ToString();
                int Customer_Totaladults = Convert.ToInt32(customer_totaladults.Text);
                int Customer_Personalequipments = Convert.ToInt32(customer_personalequipments.Text);

                summarybox.InnerHtml = "Thank you for booking your spot in rock climbing, you can review your summary below: <br>";
                summarybox.InnerHtml += "First Name: " + Customer_Fname + "<br>";
                summarybox.InnerHtml += "Last Name: " + Customer_Lname + "<br>";
                summarybox.InnerHtml += "Email: " + Customer_Email + "<br>";
                summarybox.InnerHtml += "Phone Number: " + Customer_Phonenumber + "<br>";
                summarybox.InnerHtml += "Booking Information: <br>";
                summarybox.InnerHtml += "Booking date: " + Customer_Bookingdate + "<br>";
                summarybox.InnerHtml += "Total Adults: " + Customer_Totaladults + "<br>";
                summarybox.InnerHtml += "Personal Equipments Required is " + Customer_Personalequipments + "<br>";

                int Total_Cost = 0;
                if (Customer_Totaladults <= 2)
                {
                    Total_Cost += 20;
                }
                else if(Customer_Totaladults <= 4)
                {
                    Total_Cost += 40;
                }
                else
                {
                    Total_Cost += 60;
                }
                if(Customer_Personalequipments < 4)
                {
                    Total_Cost += 30;
                }
                else if(Customer_Personalequipments < 8)
                {
                    Total_Cost += 60;
                }
                else
                {
                    Total_Cost += 90;
                }
                summarybox.InnerHtml += "Your total cost for the booking is: $" + Total_Cost;
            }
        }
    }
}
