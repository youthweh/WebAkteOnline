Imports System.Data
Imports System.Data.SqlClient
Imports System.Windows.Forms.DataVisualization.Charting
Partial Class admin_Tampil1
    Inherits System.Web.UI.Page

    Private Sub CekStatus()
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings(1).ConnectionString)
        con.Open()
        Dim cmd As New SqlCommand("SELECT COUNT(*) FROM pelapor where status=" + Label4.Text, con)
        Label5.Text = cmd.ExecuteScalar().ToString()
        con.Close()
    End Sub
    'buat chart LINE
   

    Public Function GetData() As DataTable
        Dim dt = New DataTable()
        dt.Columns.Add("Jenis Kelahiran", GetType(String))
        dt.Columns.Add("Laki-laki", GetType(Integer))
        dt.Columns.Add("Perempuan", GetType(Integer))
        dt.Rows.Add("Normal", Label6.Text, Label10.Text)
        dt.Rows.Add("Ekstraksi Vakum", Label7.Text, Label11.Text)
        dt.Rows.Add("Caesar", Label8.Text, Label12.Text)
        dt.Rows.Add("Ekstraksi Forsep", Label9.Text, Label13.Text)
        Return dt
    End Function
 
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.Visible = False
        GridView2.Visible = False
        GridView3.Visible = False

        'Jumlah data pelapor
        Dim int As Integer
        int = GridView1.Rows.Count()
        Label1.Text = int.ToString()

        'Jumlah data akte kelahiran
        Dim int2 As Integer
        int2 = GridView2.Rows.Count()
        Label2.Text = int2.ToString()

        'Jumlah status diproses
        Dim count As Int16
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim Query As String
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()

        Query = "SELECT COUNT(nik) AS rollcount FROM pelapor WHERE status='diproses'"

        cmd = New SqlCommand(Query, con)

        count = cmd.ExecuteScalar
        MsgBox(count)

        con.Close()
        Label5.Text = count.ToString()

      
   
        'Jumlah data admin
        Dim int3 As Integer
        int3 = GridView3.Rows.Count()
        Label3.Text = int3.ToString()

        'CHART --------------------------------'
        'Buat chart
        'Jumlah laki-laki yg lahir:
        'normal
        Dim Query2 As String
        Dim cmd2 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query2 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Normal' AND jk='Laki-laki'"

        cmd2 = New SqlCommand(Query2, con)

        count = cmd2.ExecuteScalar

        con.Close()
        Label6.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
        'Ekstraksi Vakum
        Dim Query3 As String
        Dim cmd3 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query3 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Ekstraksi Vakum' AND jk='Laki-laki'"

        cmd3 = New SqlCommand(Query3, con)

        count = cmd3.ExecuteScalar

        con.Close()
        Label7.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
        'Caesar
        Dim Query4 As String
        Dim cmd4 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query4 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Caesar' AND jk='Laki-laki'"

        cmd4 = New SqlCommand(Query4, con)

        count = cmd4.ExecuteScalar

        con.Close()
        Label7.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
        'Caesar
        Dim Query5 As String
        Dim cmd5 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query5 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Caesar' AND jk='Laki-laki'"

        cmd5 = New SqlCommand(Query5, con)

        count = cmd5.ExecuteScalar

        con.Close()
        Label8.Text = count.ToString()


        'Jumlah laki-laki yg lahir:
        'Ekstraksi Fosep
        Dim Query6 As String
        Dim cmd6 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query6 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Ekstraksi Forsep' AND jk='Laki-laki'"

        cmd6 = New SqlCommand(Query6, con)

        count = cmd6.ExecuteScalar

        con.Close()
        Label9.Text = count.ToString()

        'anak perempuan yang lahir:
        'normal
        Dim Query7 As String
        Dim cmd7 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query7 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Normal' AND jk='Perempuan'"

        cmd7 = New SqlCommand(Query7, con)

        count = cmd7.ExecuteScalar

        con.Close()
        Label10.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
        'Ekstraksi Vakum
        Dim Query8 As String
        Dim cmd8 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query8 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Ekstraksi Vakum' AND jk='Perempuan'"

        cmd8 = New SqlCommand(Query8, con)

        count = cmd8.ExecuteScalar

        con.Close()
        Label11.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
        'Caesar
        Dim Query9 As String
        Dim cmd9 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query9 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Caesar' AND jk='Perempuan'"

        cmd9 = New SqlCommand(Query9, con)

        count = cmd9.ExecuteScalar

        con.Close()
        Label12.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
        'Caesar
        Dim Query10 As String
        Dim cmd10 As New SqlCommand
        con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Trusted_connection=Yes"
        con.Open()


        Query10 = "SELECT COUNT(id_anak) AS rollcount FROM anak WHERE jenis_kelahiran='Ekstraksi Forsep' AND jk='Perempuan'"

        cmd10 = New SqlCommand(Query10, con)

        count = cmd10.ExecuteScalar

        con.Close()
        Label13.Text = count.ToString()


        'TAMPIL CHART1
        Me.Chart1.DataSource = GetData()
        Me.Chart1.Series.Clear()
        Chart1.ChartAreas.Clear()
        Chart1.ChartAreas.Add("Area0")
        Me.Chart1.Series.Add("Math")
        Me.Chart1.Series.Add("Physics")

        Chart1.Series(0).XValueMember = "Jenis Kelahiran"
        Chart1.Series(0).YValueMembers = "Laki-laki"
        Chart1.Series(0).IsValueShownAsLabel = True
        Chart1.ChartAreas(0).AxisX.LabelStyle.Angle = -90

        Chart1.Series(1).XValueMember = "Jenis kelahiran"
        Chart1.Series(1).YValueMembers = "Perempuan"
        Chart1.Series(1).IsValueShownAsLabel = True

        
    End Sub

End Class
