<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            font-family: Tahoma;
            font-size: 11px;
        }
        .style2
        {
            text-align: left;
            width: 279px;
        }
        .style4
        {
            font-size: 12px;
        }
        .style5
        {
            color: #142429;
        }
        .style6
        {
            color: #333333;
        }
        .style7
        {
            font-size: 14px;
        }
        .style8
        {
            color: #333333;
            font-weight: bold;
        }
        .style9
        {
            font-size: 14px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td>
    <table class="style1">
        <tr>
            <td class="style2">
                نام و نام خانوادگی:</td>
            <td>
                <asp:TextBox ID="name" runat="server" Width="196px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                ایمیل:</td>
            <td>
                <asp:TextBox ID="email" runat="server" Width="196px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="email" ErrorMessage="*" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                موضوع:</td>
            <td>
                <asp:TextBox ID="subject" runat="server" Width="196px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="subject" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                پیام:</td>
            <td>
                <asp:TextBox ID="message" runat="server" Height="188px" TextMode="MultiLine" 
                    Width="354px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="message" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSend" runat="server" BackColor="#355D6B" BorderStyle="None" 
                    ForeColor="White" style="font-family: Tahoma; font-size: 11px" Text="ارسال" 
                    ValidationGroup="1" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblSuccess" runat="server" style="color: #CC0000"></asp:Label>
            </td>
        </tr>
    </table>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td style="text-align: center">
                                         __________________________________________________________________________________________________<span 
                                             class="style5"><br />
                                         <br />
                                         &nbsp;</span><span class="style4"><span class="style5">آدرس : رشت - سبزه میدان&nbsp; 
                                         - بن بست احتساب - ساختمان کسری - طبقه دوم - واحد پنجم</span><br 
                    class="style5" />
                <span class="style5">تلفکس : 2254065-0131&nbsp; همراه : 09351312024 </span></span>
                <br />
                <br />
                <a href="mailto:Info@Gilan-Robotic.com" style="text-decoration:none;"><span class="style6">
                <span class="style9">Info@Gilan-Robotic.com</span></span></a><span 
                    class="style6"><span class="style9">&nbsp; </span><span class="style7">|</span><span 
                    class="style9">&nbsp; </span></span><a class="style7" 
                    href="mailto:Gilan.Robotic@Gmail.com"  style="text-decoration:none;"><span class="style8">
                Gilan.Robotic@Gmail.com</span></a>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

