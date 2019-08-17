Imports DAL
Imports BOL
Imports System.IO
Imports Microsoft.VisualBasic
Public Class AnakBLL
    Dim adapters As New DataSetTableAdapters.AnakTableAdapter
    Dim dataTable As New DataSet.AnakDataTable
    Dim anak As New Anak

    Function FillObjectFromTable(ByRef table As DataSet.AnakDataTable) As Anak
        For Each row As DataSet.AnakRow In table
            anak.id_anak = row.id_anak
            anak.nama_lengkap = row.nama_lengkap
            anak.tempat_lahir = row.tempat_lahir
            anak.tanggal_lahir = row.tanggal_lahir
            anak.jam_lahir = row.jam_lahir
            anak.jenis_kelamin = row.jenis_kelamin
            anak.jenis_kelahiran = row.jenis_kelahiran
            anak.anak_ke = row.anak_ke
            anak.berat_badan = row.berat_badan
            anak.panjang_badan = row.panjang_badan
            anak.nik = row.nik
            anak.unggah_foto_ktp_orangtua = row.unggah_foto_ktp_orangtua
            anak.unggah_foto_kk = row.unggah_foto_kk
            anak.unggah_surat_kelahiran = row.unggah_surat_kelahiran
            anak.unggah_kutipan_akta_nikah = row.unggah_kutipan_akta_nikah
        Next
        Return anak
    End Function

    Function Crud(ByRef anak As Anak, ByVal action As String) As String
        Dim msg As String = ""
        Dim baris As Integer = 0
        If action = "Insert" Then
            baris = adapters.Insert(anak.nama_lengkap, anak.tempat_lahir, anak.tanggal_lahir, anak.jam_lahir, anak.jenis_kelamin, anak.jenis_kelahiran, anak.anak_ke, anak.berat_badan, anak.panjang_badan, anak.nik, anak.unggah_foto_ktp_orangtua, anak.unggah_foto_kk, anak.unggah_surat_kelahiran, anak.unggah_kutipan_akta_nikah, anak.status)
        ElseIf action = "Update" Then
            baris = adapters.Update(anak.nama_lengkap, anak.tempat_lahir, anak.tanggal_lahir, anak.jam_lahir, anak.jenis_kelamin, anak.jenis_kelahiran, anak.anak_ke, anak.berat_badan, anak.panjang_badan, anak.nik, anak.unggah_foto_ktp_orangtua, anak.unggah_foto_kk, anak.unggah_surat_kelahiran, anak.unggah_kutipan_akta_nikah, anak.status, anak.id_anak)
        ElseIf action = "Delete" Then
            baris = adapters.Delete(anak.id_anak)
        Else

        End If

        If baris > 0 Then
            msg = action + " berhasil dilakukan"
        Else
            msg = action + " gagal dilakukan"
        End If

        Return msg
    End Function

    Function GetDataByID(ByVal id As String) As DataSet.AnakDataTable
        dataTable = adapters.GetDataByID(id)
        Return dataTable
    End Function

    Function GetDataByNIK(ByVal nik As String) As DataSet.AnakDataTable
        dataTable = adapters.GetDataByNIK(nik)
        Return dataTable
    End Function

    Function GetData() As DataSet.AnakDataTable
        dataTable = adapters.GetData
        Return dataTable
    End Function

End Class
