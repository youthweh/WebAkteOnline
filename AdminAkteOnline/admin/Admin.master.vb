Imports BLL
Imports BOL
Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_Admin
    Inherits System.Web.UI.MasterPage

    Dim petugas_dinas As New Petugas_Dinas
    Dim petugas_dinasBLL As New Petugas_DinasBLL

    Dim anak As New Anak
    Dim anakBLL As New AnakBLL

    Dim pelapor As New Pelapor
    Dim pelaporBLL As New PelaporBLL


    Public Function GetData() As DataTable
        Dim dt = New DataTable()
        dt.Columns.Add("Jenis Kelahiran", GetType(String))
        dt.Columns.Add("Laki-laki", GetType(Integer))
        dt.Columns.Add("Perempuan", GetType(Integer))
        dt.Rows.Add("Normal", Label6.Text, Label10.Text)
        dt.Rows.Add("Dibantu Alat", Label7.Text, Label11.Text)
        dt.Rows.Add("Caesar", Label8.Text, Label12.Text)
        dt.Rows.Add("Didalam air", Label9.Text, Label13.Text)
        Return dt
    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") Is Nothing Then
            Response.Redirect("Login.aspx")
        Else
            'lblLaki.Visible = False
            'lblPerempuan.Visible= False
        Label6.Visible = False
        Label7.Visible = False
        Label8.Visible = False
        Label9.Visible = False

        Label10.Visible = False
        Label11.Visible = False
        Label12.Visible = False
            Label13.Visible = False

            Label14.Visible = False
            Label15.Visible = False
            Label16.Visible = False

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
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        con.Open()

            Query = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE status='sedang diproses'"

        cmd = New SqlCommand(Query, con)

        count = cmd.ExecuteScalar
        'MsgBox(count)

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
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        con.Open()


            Query2 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelahiran='Persalinan Normal' AND jenis_kelamin='Laki-laki'"

        cmd2 = New SqlCommand(Query2, con)

        count = cmd2.ExecuteScalar

        con.Close()
        Label6.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
            'Dengan bantuan alat
        Dim Query3 As String
        Dim cmd3 As New SqlCommand
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
            con.Open()


            Query3 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelahiran='Persalinan dibantu alat' AND jenis_kelamin='Laki-laki'"

        cmd3 = New SqlCommand(Query3, con)

        count = cmd3.ExecuteScalar

        con.Close()
        Label7.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
        'Caesar
        Dim Query4 As String
        Dim cmd4 As New SqlCommand
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        con.Open()


            Query4 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelahiran='Persalinan caesar' AND jenis_kelamin='Laki-laki'"

        cmd4 = New SqlCommand(Query4, con)

        count = cmd4.ExecuteScalar

        con.Close()
            Label8.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
            'Persalinan dalam air
        Dim Query5 As String
        Dim cmd5 As New SqlCommand
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"

        con.Open()


            Query5 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelahiran='Persalinan di dalam air' AND jenis_kelamin='Laki-laki'"

        cmd5 = New SqlCommand(Query5, con)

        count = cmd5.ExecuteScalar

        con.Close()
            Label9.Text = count.ToString()



        'anak perempuan yang lahir:
        'normal
        Dim Query7 As String
        Dim cmd7 As New SqlCommand
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
            con.Open()


            Query7 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelahiran='Persalinan Normal' AND jenis_kelamin='Perempuan'"

        cmd7 = New SqlCommand(Query7, con)

        count = cmd7.ExecuteScalar

        con.Close()
        Label10.Text = count.ToString()

            'Jumlah perempuan yg lahir:
            'dibantu alat
        Dim Query8 As String
        Dim cmd8 As New SqlCommand
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
            con.Open()


            Query8 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelahiran='Persalinan dibantu alat' AND jenis_kelamin='Perempuan'"

        cmd8 = New SqlCommand(Query8, con)

        count = cmd8.ExecuteScalar

        con.Close()
        Label11.Text = count.ToString()

            'Jumlah perempuan yg lahir:
        'Caesar
        Dim Query9 As String
        Dim cmd9 As New SqlCommand
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
            con.Open()


            Query9 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelahiran='Persalinan caesar' AND jenis_kelamin='Perempuan'"

        cmd9 = New SqlCommand(Query9, con)

        count = cmd9.ExecuteScalar

        con.Close()
        Label12.Text = count.ToString()

        'Jumlah laki-laki yg lahir:
        'Caesar
        Dim Query10 As String
        Dim cmd10 As New SqlCommand
            con.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
            con.Open()


            Query10 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelahiran='Persalinan di dalam air' AND jenis_kelamin='Perempuan'"

        cmd10 = New SqlCommand(Query10, con)

        count = cmd10.ExecuteScalar

        con.Close()
        Label13.Text = count.ToString()


        'TAMPIL CHART
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

        End If

        'CHART LINE------------------------------------------
        Chart2.Titles.Add("Grafik Kelahiran")
        Chart2.ChartAreas.Clear()
        Chart2.ChartAreas.Add("Default")

        With Chart2.ChartAreas("Default")
            .AxisX.Title = "Tahun" 'x label
            .AxisX.MajorGrid.LineColor = Drawing.Color.SkyBlue
            .AxisY.MajorGrid.LineColor = Drawing.Color.SkyBlue
            .AxisY.Title = "Jumlah kelahiran" 'y label
        End With
        'specify series plot lines
        Chart2.Series.Clear()
        Chart2.Series.Add("plot1")
        Chart2.Series("plot1").Color = Drawing.Color.Red
        Chart2.Series("plot1").ChartType = DataVisualization.Charting.SeriesChartType.Line

        'Rata-rata kelahiran dari tahun ke tahun
        '2018
        Dim count2 As Int16
        Dim con2 As New SqlConnection
        Dim Query11 As String
        Dim cmd11 As New SqlCommand
        con2.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        con2.Open()

        '2019-01-01

        Query11 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE(DATEPART(yy, tanggal_lahir) = 2018)"

        cmd11 = New SqlCommand(Query11, con2)

        count2 = cmd11.ExecuteScalar

        con2.Close()
        Label14.Text = count2.ToString()

        'Rata-rata kelahiran dari tahun ke tahun
        '2019
        Dim Query12 As String
        Dim cmd12 As New SqlCommand
        con2.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        con2.Open()
        '2019-01-01

        Query12 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE(DATEPART(yy, tanggal_lahir) = 2019)"

        cmd12 = New SqlCommand(Query12, con2)

        count2 = cmd12.ExecuteScalar

        con2.Close()
        Label15.Text = count2.ToString()

        'Rata-rata kelahiran dari tahun ke tahun
        '2020
        Dim Query13 As String
        Dim cmd13 As New SqlCommand
        con2.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        con2.Open()
        '2019-01-01

        Query13 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE(DATEPART(yy, tanggal_lahir) = 2020)"

        cmd13 = New SqlCommand(Query13, con2)

        count2 = cmd13.ExecuteScalar

        con2.Close()
        Label16.Text = count2.ToString()

        'Titik grafik
        Chart2.Series("plot1").Points.AddXY(2018, Label14.Text)
        Chart2.Series("plot1").Points.AddXY(2019, Label15.Text)
        Chart2.Series("plot1").Points.AddXY(2020, Label16.Text)

        'CHART PIE------------------------------------------------------------------------------
        Chart3.Titles.Add("Grafik Kelahiran")
        Chart3.ChartAreas.Clear()
        Chart3.ChartAreas.Add("Default")

        With Chart3.ChartAreas("Default")
            .AxisX.Title = "Tahun" 'x label
            .AxisX.MajorGrid.LineColor = Drawing.Color.SkyBlue
            .AxisY.MajorGrid.LineColor = Drawing.Color.SkyBlue
            .AxisY.Title = "Jumlah kelahiran" 'y label
        End With
        'specify series plot lines
        Chart3.Series.Clear()
        Chart3.Series.Add("plot1")

        Chart3.Series("plot1").ChartType = DataVisualization.Charting.SeriesChartType.Pie
        'DATA PEREMPUAN
        Dim Query14 As String
        Dim cmd14 As New SqlCommand
        con2.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        con2.Open()
        '2019-01-01

        Query14 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelamin='Perempuan'"

        cmd14 = New SqlCommand(Query14, con2)

        count2 = cmd14.ExecuteScalar

        con2.Close()
        'lblPerempuan.Text = count2.ToString()
        'DATA LAKI-LAKI
        Dim Query15 As String
        Dim cmd15 As New SqlCommand
        con2.ConnectionString = "Data Source=LAPTOP-J7REG266\sqlexpress;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL10.SQLEXPRESS\MSSQL\DATA\AKTA_KELAHIRAN.MDF;Integrated Security=True"
        con2.Open()
        '2019-01-01

        Query15 = "SELECT COUNT(id_anak) AS rollcount FROM Anak WHERE jenis_kelamin='Laki-laki'"

        cmd15 = New SqlCommand(Query15, con2)

        count2 = cmd15.ExecuteScalar

        con2.Close()
        lblLaki.Text = count2.ToString()

        'Titik(grafik)
        Chart3.Series("plot1").Points.AddXY("Laki-laki", lblLaki.Text)
        Chart3.Series("plot1").Points.AddXY("Perempuan", lblPerempuan.Text)

        
    End Sub
End Class
