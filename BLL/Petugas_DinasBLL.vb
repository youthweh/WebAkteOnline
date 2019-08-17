Imports DAL
Imports BOL
Imports System.IO
Imports Microsoft.VisualBasic
Public Class Petugas_DinasBLL
    Dim adapters As New DataSetTableAdapters.Petugas_DinasTableAdapter
    Dim dataTable As New DataSet.Petugas_DinasDataTable
    Dim petugas_dinas As New Petugas_Dinas

    Function FillObjectFromTable(ByRef table As DataSet.Petugas_DinasDataTable) As Petugas_Dinas
        For Each row As DataSet.Petugas_DinasRow In table
            petugas_dinas.id_petugas_dinas = row.id_petugas_dinas
            petugas_dinas.username = row.username
            petugas_dinas.password = row.password
        Next
        Return petugas_dinas
    End Function

    Function Crud(ByRef petugas_dinas As Petugas_Dinas, ByVal action As String) As String
        Dim msg As String = ""
        Dim baris As Integer = 0
        If action = "Insert" Then
            baris = adapters.Insert(petugas_dinas.username, petugas_dinas.password)
        ElseIf action = "Update" Then
            baris = adapters.Update(petugas_dinas.username, petugas_dinas.password, petugas_dinas.id_petugas_dinas)
        ElseIf action = "Delete" Then
            baris = adapters.Delete(petugas_dinas.id_petugas_dinas)
        Else

        End If

        If baris > 0 Then
            msg = action + " berhasil dilakukan"
        Else
            msg = action + " gagal dilakukan"
        End If

        Return msg
    End Function

    Function GetDataByLogin(ByVal username As String, ByVal password As String) As DataSet.Petugas_DinasDataTable
        dataTable = adapters.GetDataByLogin(username, password)
        Return dataTable
    End Function

    Function GetData() As DataSet.Petugas_DinasDataTable
        dataTable = adapters.GetData
        Return dataTable
    End Function

End Class
