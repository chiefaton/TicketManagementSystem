﻿<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="TicketManagementSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: blueviolet; font-size: xx-large; color: white" align="center">
        Raise a Ticket
    </div>
    <br />

    <div style="padding: 15px">
        <table class="nav-justified">
            <tr>
                <td style="width: 283px">
                    <asp:Label ID="Label1" runat="server" Text="Title" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Font-Size="Medium" Width="200px" Required="True" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                    ErrorMessage="Title is required." />
                </td>
            </tr>
            <tr>
                <td style="width: 283px">
                    <asp:Label ID="Label2" runat="server" Text="Description" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Height="100px" TextMode="MultiLine" Width="600px" Required="True" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription"
    ErrorMessage="Description is required." />
                </td>
            </tr>
            <tr>
                <td style="width: 283px; height: 20px">
                    <asp:Label ID="Label3" runat="server" Text="Raised By" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtRaisedBy" runat="server" Font-Size="Medium" Width="200px" Required="True" />
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRaisedBy"
    ErrorMessage="Raised By is required." />
                </td>
            </tr>
            <tr>
                <td style="width: 283px">
                    <asp:Label ID="txtSeverity" runat="server" Text="Severity" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonsSeverity" runat="server" CellSpacing="1" Font-Size="Medium" RepeatDirection="Horizontal" Required="True">
    <asp:ListItem>Low</asp:ListItem>
    <asp:ListItem>Medium</asp:ListItem>
    <asp:ListItem>High</asp:ListItem>
</asp:RadioButtonList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonsSeverity"
    ErrorMessage="Severity is required." />
                </td>
            </tr>

            <tr>
                <td style="width: 283px">
                    <asp:Label ID="txtPriority" runat="server" Text="Priority" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListPriority" runat="server" Font-Size="Medium">
                        <asp:ListItem Value="High">P1</asp:ListItem>
                        <asp:ListItem Value="Medium">P2</asp:ListItem>
                        <asp:ListItem Value="Low">P3</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td style="width: 283px; height: 20px">
                    <asp:Label ID="Label5" runat="server" Text="Email" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Size="Medium" Width="200px" />
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
    ErrorMessage="Invalid email address." ValidationExpression="\w+([-+.]\w+)@\w+([-.]\w+)(\.\w+)?" />
                </td>
            </tr>
            <tr>
                <td style="width: 283px; height: 20px">
                    <asp:Label ID="Label6" runat="server" Text="Date" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:Calendar ID="CalendarDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td style="width: 283px">
                    <asp:Label ID="Label7" runat="server" Text="Category" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListCategory" runat="server" Font-Size="Medium">
                        <asp:ListItem>Hardware Issue</asp:ListItem>
                        <asp:ListItem>Network Issue</asp:ListItem>
                        <asp:ListItem>Software Issue</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 283px; height: 20px">
                    <asp:Label ID="Label8" runat="server" Text="Sub - Category" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:DropDownList ID="DropDownListSubCategory" runat="server" Font-Size="Medium">
                        <asp:ListItem>IP Blocked</asp:ListItem>
                        <asp:ListItem>Site 404</asp:ListItem>
                        <asp:ListItem Value="Not allowed">Not allowed</asp:ListItem>
                        <asp:ListItem>Storage Full</asp:ListItem>
                        <asp:ListItem>High Load</asp:ListItem>
                        <asp:ListItem>High Latency</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 283px">
                    <asp:Label ID="Label9" runat="server" Text="Sub Child Category" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium">
                        <asp:ListItem>MS SQL Server</asp:ListItem>
                        <asp:ListItem>IIS Server</asp:ListItem>
                        <asp:ListItem>Outlook</asp:ListItem>
                        <asp:ListItem>SSD</asp:ListItem>
                        <asp:ListItem>HHD</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 283px">
                    <asp:Label ID="Label10" runat="server" Text="Environment" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonEnvironment" runat="server" Font-Size="Medium" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="2">
                        <asp:ListItem>DEV</asp:ListItem>
                        <asp:ListItem>UAT</asp:ListItem>
                        <asp:ListItem>PROD</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 283px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Font-Size="Medium" Text="Submit" />
                </td>
            </tr>

        <tr>
                <td style="width: 283px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Font-Size="Medium" Text="Update" />
                </td>
            </tr>

<tr>
                <td style="width: 283px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Font-Size="Medium" Text="Delete" />
                </td>
            </tr>
            
        </table>

        <div align="center">

            <hr />
            <asp:GridView ID="GridView1" runat="server" Width="922px">
            </asp:GridView>

        </div>

    </div>
</asp:Content>


