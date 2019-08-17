Imports DAL
Imports BOL
Imports System.IO
Imports Microsoft.VisualBasic
Public Class PelaporBLL
    Dim adapters As New DataSetTableAdapters.PelaporTableAdapter
    Dim dataTable As New DataSet.PelaporDataTable
    Dim pelapor As New Pelapor

    Function FillObjectFromTable(ByRef table As DataSet.PelaporDataTable) As Pelapor
        For Each row As DataSet.PelaporRow In table
            pelapor.nik = row.nik
            pelapor.nama_lengkap = row.nama_lengkap
            pelapor.no_kk = row.no_kk
            pelapor.email = row.email
            pelapor.no_hp = row.no_hp
            pelapor.password = row.password
        Next
        Return pelapor
    End Function

    Function Crud(ByRef pelapor As Pelapor, ByVal action As String) As String
        Dim msg As String = ""
        Dim baris As Integer = 0
        If action = "Insert" Then
            baris = adapters.Insert(pelapor.nik, pelapor.nama_lengkap, pelapor.no_kk, pelapor.email, pelapor.no_hp, pelapor.password)
        ElseIf action = "Update" Then
            baris = adapters.Update(pelapor.nama_lengkap, pelapor.no_kk, pelapor.email, pelapor.no_hp, pelapor.password, pelapor.nik)
        ElseIf action = "Delete" Then
            baris = adapters.Delete(pelapor.nik)
        Else

        End If

        If baris > 0 Then
            msg = action + " berhasil dilakukan"
        Else
            msg = action + " gagal dilakukan"
        End If

        Return msg
    End Function

    Function GetDataByLogin(ByVal email As String, ByVal password As String) As DataSet.PelaporDataTable
        dataTable = adapters.GetDataByLogin(email, password)
        Return dataTable
    End Function

    Function GetDataByNIK(ByVal nik As String) As DataSet.PelaporDataTable
        dataTable = adapters.GetDataByNIK(nik)
        Return dataTable
    End Function

    Function GetData() As DataSet.PelaporDataTable
        dataTable = adapters.GetData
        Return dataTable
    End Function

End Class
