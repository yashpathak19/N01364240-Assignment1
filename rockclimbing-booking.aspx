<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rockclimbing-booking.aspx.cs" Inherits="n01364240_assignment1.rockclimbing_booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rock Climbing</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <h1>Rock Climbing Booking</h1>
            <h2>Personal Details</h2>
            <div>
                <label for="customer_fname">First Name:</label>
                <asp:TextBox runat="server" id="customer_fname" placeholder="e.g. Yash..."></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide your first name!" ControlToValidate="customer_fname"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="customer_lname">Last Name:</label>
                <asp:TextBox runat="server" id="customer_lname" placeholder="e.g. Pathak..."></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide your last name!" ControlToValidate="customer_lname"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="customer_email">Email:</label>
                <asp:TextBox runat="server" id="customer_email" placeholder="abc@example.com"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide your email!" ControlToValidate="customer_email"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="customer_phonenumber">Phone Number:</label>
                <asp:TextBox runat="server" id="customer_phonenumber" placeholder="0000000000"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide your phone number!" ControlToValidate="customer_phonenumber"></asp:RequiredFieldValidator>
            </div>
            <h2>Booking Information</h2>
            <div>
                <label>Booking Date:</label>
                <asp:TextBox runat="server" id="customer_bookingdate" name="customer_bookingdate" placeholder="09-12-2019"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide a booking date!" ControlToValidate="customer_bookingdate"></asp:RequiredFieldValidator>
                <%--I got the date regex from "https://www.aspforums.net/Threads/953125/Regular-Expression-for-Date-ddmmyyyy-and-dd-mm-yyyy-format-in-ASPNet/"
                I accessed the site on 27/09/2019
                I am using the regex for validating the booking date for dd-mm-yyyy format.--%>
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="customer_bookingdate" ValidationExpression="(0[1-9]|[12][0-9]|3[01])[-](0[1-9]|1[012])[-]\d{4}" ErrorMessage="Please enter date in format of dd-mm-yyyy"></asp:RegularExpressionValidator>
            </div>
            <div>
                <label for="customer_totaladults">Number of Adults</label>
                <asp:DropDownList runat="server" id="customer_totaladults" name="customer_totaladults" RepeatDirection="Horizontal">
                    <asp:ListItem value="1">1</asp:ListItem>
                    <asp:ListItem value="2">2</asp:ListItem>
                    <asp:ListItem value="3">3</asp:ListItem>
                    <asp:ListItem value="4">4</asp:ListItem>
                    <asp:ListItem value="5">5</asp:ListItem>
                    <asp:ListItem value="6">6</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label>Please select the ID proof that you have</label>
                <asp:CheckBoxList ID="customer_proof" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem value="licence" Text="Licence"></asp:ListItem>
                    <asp:ListItem value="passport" Text="Passport"></asp:ListItem>
                    <asp:ListItem value="citizencard" Text="Canadian Citizenship Card"></asp:ListItem>
                    <asp:ListItem value="prcard" Text="Canadian Permanent Resident card"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div>
                <label>Select the amount of personal protective equipments that you will require</label>
                <asp:TextBox runat="server" ID="customer_personalequipments" placeholder="E.g. 2"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please provide the personal protective equipments that you require!" ControlToValidate="customer_personalequipments"></asp:RequiredFieldValidator>
                <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="customer_personalequipments" ErrorMessage="Please provide personal equipment count between 1 to 9" Type="Integer" MinimumValue="1" MaximumValue="9" ></asp:RangeValidator>
            </div>
            <h2>Gears and Training</h2>
            <div>
                <label>What gears do you require?</label>
                <asp:CheckBoxList ID="customer_gears" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem value="harnesses" Text="Harnesses"></asp:ListItem>
                    <asp:ListItem value="belay_device" Text="Belay Device"></asp:ListItem>
                    <asp:ListItem value="shoes" Text="Shoes"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div>
                <label>Would you require any training?</label>
                <asp:RadioButtonList runat="server" ID="customer_training" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Yes" value="yes"/>
                    <asp:ListItem Text="No" value="no"/>
                </asp:RadioButtonList>
            </div>
            <h2>Subscription</h2>
            <div>
                <label>Do you want to subscribe to our newsletter?</label>
                <asp:RadioButtonList runat="server" ID="customer_newsletter">
                    <asp:ListItem Text="Yes" value="yes"/>
                    <asp:ListItem Text="No" value="no"/>
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:Button runat="server" Text="Submit"/>
            </div>
            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" />
            </section>
            <section id="summarybox" runat="server"/>
        </section>
    </form>
</body>
</html>
