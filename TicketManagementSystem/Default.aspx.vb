Imports System.Data.SqlClient
Imports System.Globalization

Public Class _Default
    Inherits Page

    Dim connect As New SqlConnection("Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=TicketManagementSystem;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        'Dim connect As New SqlConnection("Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=TicketManagementSystem;Integrated Security=True")
        Dim title As String = txtTitle.Text
        Dim raisedby As String = txtRaisedBy.Text
        Dim severity As String = txtSeverity.Text
        Dim priority As String = DropDownListPriority.SelectedValue
        Dim email As String = txtEmail.Text
        Dim raisedDate As Date = CalendarDate.SelectedDate
        Dim environment As String = RadioButtonEnvironment.SelectedValue
        Dim Category As String = DropDownListCategory.SelectedValue
        Dim SubCategory As String = DropDownListSubCategory.SelectedValue
        Dim SubChildCategory As String = DropDownListSubCategory.SelectedValue
        Dim Description As String = txtDescription.Text

        connect.Open()

        Dim command As New SqlCommand("Insert into TicketInfo values (@Title,@RaisedBy,@Severity,
        @PriorityLevel, @Email,@RaisedDate, @Environment, @Category, @SubCategory, @SubChildCategory,
        @Description)", connect)

        command.Parameters.AddWithValue("@Title", title)
        command.Parameters.AddWithValue("@RaisedBy", raisedby)
        command.Parameters.AddWithValue("@Severity", severity)
        command.Parameters.AddWithValue("@PriorityLevel", priority)
        command.Parameters.AddWithValue("@Email", email)
        command.Parameters.AddWithValue("@RaisedDate", raisedDate)
        command.Parameters.AddWithValue("@Environment", environment)
        command.Parameters.AddWithValue("@Category", Category)
        command.Parameters.AddWithValue("@SubCategory", SubCategory)
        command.Parameters.AddWithValue("@SubChildCategory", SubChildCategory)
        command.Parameters.AddWithValue("@Description", Description)

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