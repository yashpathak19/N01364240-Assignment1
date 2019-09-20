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
                <asp:TextBox runat="server" id="customer_fname" name="customer_fname" placeholder="e.g. Yash..."></asp:TextBox>
            </div>
            <div>
                <label for="customer_lname">Last Name:</label>
                <asp:TextBox runat="server" id="customer_lname" name="customer_lname" placeholder="e.g. Pathak..."></asp:TextBox>
            </div>
            <div>
                <label for="customer_email">Email:</label>
                <asp:TextBox runat="server" id="customer_email" name="customer_email" placeholder="abc@example.com"></asp:TextBox>
            </div>
            <div>
                <label for="customer_phonenumber">Phone Number:</label>
                <asp:TextBox runat="server" id="customer_phonenumber" name="customer_phonenumber" placeholder="0000000000"></asp:TextBox>
            </div>
            <h2>Booking Information</h2>
            <div>
                <label>Booking Date:</label>
                <asp:TextBox runat="server" id="customer_bookingdate" name="customer_bookingdate" placeholder="2019-09-10"></asp:TextBox>
            </div>
            <div>
                <label for="customer_totaladults">Number of Adults</label>
                <asp:DropDownList runat="server" id="customer_totaladults" name="customer_totaladults" RepeatDirection="Horizontal">
                    <asp:ListItem value="one">1</asp:ListItem>
                    <asp:ListItem value="two">2</asp:ListItem>
                    <asp:ListItem value="three">3</asp:ListItem>
                    <asp:ListItem value="four">4</asp:ListItem>
                    <asp:ListItem value="five">5</asp:ListItem>
                    <asp:ListItem value="six-more">6+</asp:ListItem>
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
            <fieldset>
                <legend>Do you want to subscribe to our newsletter?</legend>
                <asp:RadioButtonList runat="server" ID="customer_newsletter">
                    <asp:ListItem Text="Yes" value="yes"/>
                    <asp:ListItem Text="No" value="no"/>
                </asp:RadioButtonList>
            </fieldset>
            <div>
                <asp:Button runat="server" Text="Submit"/>
            </div>
        </section>
    </form>
</body>
</html>
