Imports System.Data.SqlClient

Public Class _Default
    Inherits Page

    Dim connect As New SqlConnection("Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=TicketManagementSystem;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim connect As New SqlConnection("Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=TicketManagementSystem;Integrated Security=True")
        Dim title As String = txtTitle.Text
        Dim raisedby As String = txtRaisedBy.Text
        Dim severity As String = txtSeverity.Text
        Dim priority As String = DropDownListPriority.SelectedValue
        Dim email As String = txtEmail.Text
        Dim raisedDate As String = txtCalender.Text
        Dim environment As String = RadioButtonEnvironment.SelectedValue
        Dim Category As String = DropDownListCategory.SelectedValue
        Dim SubCategory As String = DropDownListSubCategory.SelectedValue
        Dim SubChildCategory As String = DropDownListSubCategory.SelectedValue
        Dim Description As String = txtDescription.Text

        connect.Open()

        Dim command As New SqlCommand("Insert into TicketInfo values ('" & title & "',
           '" & raisedby & "',
           '" & severity & "',
           '" & priority & "',
           '" & email & "',
           '" & raisedDate & "',
           '" & environment & "',
           '" & Category & "',
           '" & SubCategory & "',
           '" & SubChildCategory & "',
           '" & Description & "',
           )")

        command.ExecuteNonQuery()

        MsgBox("Successfully Inserted", MsgBoxStyle.Information, "Message")

        connect.Close()
    End Sub

    Protected Sub ListProduct()
        Dim command As New SqlCommand("select * from TicketInfo", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable

        sd.Fill(dt)
        GridView1.DataSource = dt
    End Sub

    'Protected Sub btnCreateTicket_Click(Sender As Object, e As EventArgs) Handles btnCreateTicket.Click
    '    Response.Redirect("CreateTicket.aspx")
    'End Sub

End Class