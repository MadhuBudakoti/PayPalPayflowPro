<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="outlinebox">
        <div id="header">
            <br />
            <asp:Label ID="lblHeader" runat="server" CssClass="header" 
                Text="PayPal Payflow Pro Online Credit Card Transaction"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblError" runat="server" CssClass="error-text"></asp:Label>
        </div>
        <div id="content">
            <hr width="100%" />
            <table align="center" width="100%" cellpadding="2" cellspacing="2">
               <tr>
                    <td width="160">
                        Amount to Charge</td>
                    <td>                     
                        <asp:TextBox ID="txtAmount" runat="server" CssClass="paymentinfo-text" 
                            Width="150px">25.50</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="160">
                        Card Type <span class="star">*</span></td>
                    <td>
                        <asp:DropDownList ID="ddlCardType" runat="server" CssClass="paymentinfo-text">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>MasterCard</asp:ListItem>
                            <asp:ListItem Selected="True">Visa</asp:ListItem>
                            <asp:ListItem>American Express</asp:ListItem>
                            <asp:ListItem>Diners Club</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="ddlCardType" Display="Dynamic" CssClass="error-text" ErrorMessage="Required" 
                            ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Card Number <span class="star">*</span></td>
                    <td>
                        <asp:TextBox ID="txtCardNumber" runat="server" CssClass="paymentinfo-text" 
                            Width="150px">4111111111111111</asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCardNumber" Display="Dynamic" CssClass="error-text" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Name on Card <span class="star">*</span></td>
                    <td>
                        <asp:TextBox ID="txtNameOnCard" runat="server" CssClass="paymentinfo-text" 
                            Width="150px">John Deo</asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtNameOnCard" Display="Dynamic" CssClass="error-text" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Expiration <span class="star">*</span></td>
                    <td>
                        <asp:DropDownList ID="ddlMonth" runat="server" CssClass="paymentinfo-text">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlYear" runat="server" CssClass="paymentinfo-text">
                        </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlMonth" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage="Month required"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="ddlYear" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage=" Year required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               <tr>
                    <td valign="top">
                        Card Security Code <span class="star">*</span></td>
                    <td align="left">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr><td width="50">
                        <asp:TextBox ID="txtCvv" runat="server" CssClass="paymentinfo-text" 
                            Width="35px">123</asp:TextBox>
                        &nbsp; 
                            </td><td valign="top" class="cvv-text">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtCvv" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage="Required"></asp:RequiredFieldValidator>
                            A code that is printed (not imprinted) on the back of 
                                a credit card. It consist of 3 or 4 digits.
                        </td></tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" 
                            onclick="btnSubmit_Click" />
                        &nbsp;
                        <input id="btnCancel" type="reset" value="Cancel" class="button" />
                        
                        </td>
                </tr>
            </table><br />
            <hr width="100%" />
            <asp:Label ID="lblResult" runat="server" Width="100%" CssClass="standard-text"></asp:Label>
 
        </div>
        <div id="footer"></div>
    </div>
    </form>
</body>
</html>
