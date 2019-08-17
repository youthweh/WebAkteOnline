Imports Microsoft.VisualBasic
Public Class Pelapor
    Private _nik As String = ""
    Public Property nik() As String
        Get
            Return _nik
        End Get
        Set(ByVal value As String)
            _nik = value
        End Set
    End Property

    Private _nama_lengkap As String = ""
    Public Property nama_lengkap() As String
        Get
            Return _nama_lengkap
        End Get
        Set(ByVal value As String)
            _nama_lengkap = value
        End Set
    End Property


    Private _no_kk As String = ""
    Public Property no_kk() As String
        Get
            Return _no_kk
        End Get
        Set(ByVal value As String)
            _no_kk = value
        End Set
    End Property


    Private _email As String = ""
    Public Property email() As String
        Get
            Return _email
        End Get
        Set(ByVal value As String)
            _email = value
        End Set
    End Property


    Private _no_hp As String = ""
    Public Property no_hp() As String
        Get
            Return _no_hp
        End Get
        Set(ByVal value As String)
            _no_hp = value
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


    Private _status As String = ""
    Public Property status() As String
        Get
            Return _status
        End Get
        Set(ByVal value As String)
            _status = value
        End Set
    End Property

End Class
