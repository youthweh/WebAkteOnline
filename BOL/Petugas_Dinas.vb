Public Class Petugas_Dinas

    Private _id_petugas_dinas As String = ""
    Public Property id_petugas_dinas() As String
        Get
            Return _id_petugas_dinas
        End Get
        Set(ByVal value As String)
            _id_petugas_dinas = value
        End Set
    End Property


    Private _username As String = ""
    Public Property username() As String
        Get
            Return _username
        End Get
        Set(ByVal value As String)
            _username = value
        End Set
    End Property


    Private _password As String = ""
    Public Property password() As String
        Get
            Return _password
        End Get
        Set(ByVal value As String)
            _password = value
        End Set
    End Property

End Class
