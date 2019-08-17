<%@ Page Title="" Language="VB" MasterPageFile="~/assets/MasterPage.master" AutoEventWireup="false"
    CodeFile="FormPendaftaranAktaPelapor.aspx.vb" Inherits="assets_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">

        <asp:View ID="vDaftarAnak" runat="server">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="form-body bg-light">
                <div class="row">
                <div id="divPopup" visible="false" runat="server" class="col-md-offset-2 col-md-8">
            <div class="alert-box danger" id="divBox" runat="server">
                <span class="alert-closebtn" onclick="this.parentElement.style.display='none';">×</span>
                &nbsp;<%=msg%></div>
        </div>
                    <div class="col-md-4 col-md-offset-2">
                        <label class="lable-text" for="name">
                            Nama Lengkap Bayi</label>
                            <asp:TextBox runat="server" CssClass="input-1" ID="txtName" placeholder="Masukkan Nama Lengkap Bayi Anda" />
                    </div>
                    <div class="col-md-4">
                        <label class="lable-text" for="name">
                            Tempat Lahir</label>
                            <asp:TextBox runat="server" CssClass="input-1" ID="txtTempatLahir" placeholder="Masukkan Tempat lahir Anda" />
                    </div>
                </div>
                <!-- end row -->
                <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                        <label class="lable-text" for="phone">
                            Tanggal Lahir</label>
                        <asp:TextBox runat="server" TextMode="Date" CssClass="input-1" ID="txtTglLahir" placeholder="Masukkan Tanggal Lahir Bayi Anda" />
                    </div>
                    <div class="col-md-4">
                        <label class="lable-text" for="adress">
                            Jam Lahir</label>
                            <asp:TextBox runat="server" TextMode="Time" CssClass="input-1" ID="txtJamLahir" placeholder="Masukkan Jam Lahir Bayi Anda" />
     
                    </div>
                </div>
                <!-- end row -->
                <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                        <label class="lable-text" for="phone">
                            Jenis Kelamin</label>
                        <asp:RadioButtonList ID="rblJenisKelamin" CssClass="" runat="server">
                            <asp:ListItem>Laki-Laki</asp:ListItem>
                            <asp:ListItem>Perempuan</asp:ListItem>
                        </asp:RadioButtonList>
                        
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    <div class="col-md-4">
                        <label class="lable-text" for="adress">
                            Jenis Kelahiran</label>
                        <asp:DropDownList ID="ddlJenisKelahiran" CssClass="input-1" runat="server">
                            <asp:ListItem>Persalinan Normal</asp:ListItem>
                            <asp:ListItem>Persalinan dibantu alat</asp:ListItem>
                            <asp:ListItem>Persalinan caesar</asp:ListItem>
                            <asp:ListItem>Persalinan di dalam air</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                        <label class="lable-text" for="phone">
                            Anak Ke</label>
                        <asp:TextBox ID="txtAnakKe" TextMode="Number" CssClass="input-1" runat="server" />
                    </div>
                    <div class="col-md-4">
                        <label class="lable-text" for="adress">
                            Berat Badan</label>
                            <asp:TextBox ID="txtBeratBadan" placeholder="Masukkan Berat Badan Bayi Anda" TextMode="Number" CssClass="input-1" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                        <label class="lable-text" for="phone">
                            Panjang Badan</label>
                        <asp:TextBox ID="txtPanjangBadan" placeholder="Masukkan Panjang Badan Bayi Anda" TextMode="Number" CssClass="input-1" runat="server" />
                    </div>
                    <div class="col-md-4">
                        <label class="lable-text" for="adress">
                            NIK Pelapor</label>
                        <asp:TextBox ID="txtNikPelapor" ReadOnly placeholder="Masukkan NIK Anda" TextMode="Number" CssClass="input-1" runat="server" />
                    </div>
                </div>
                <!-- end row -->
                <div class="row">
                    <br>
                    <div class="col-md-12 text-center">
                        <a class="btn btn-dark btn-medium uppercase" ID="btnLanjutkan" runat="server">
                        <i class="fa fa-paper-plane"></i>Lanjutkan 
                            </a>
                    </div>
                </div>
                <!-- end row -->
            </div>
        </asp:View>

        <asp:View ID="vUnggahAnak" runat="server">
            <section class="sec-padding">
  <div class="container">
  <div class="row">
  <br />
   <div class="col-md-12 text-center">
        <h4 class="uppercase text-white">
            Silahkan Unggah Berkas Anda
        </h4>
   </div>
   
   <div class="col-md-12">

   <div class="col-md-6">

  <div class="col-md-4">
  <div class="container">
<label class="text-white" for="name"> Unggah KTP Pelapor</label>
</div>
</div> 

  <div class="col-md-12">
<div class="kv-main">          
                <asp:FileUpload CssClass="file" ID="fuKTPPelapor" runat="server" />
                <br />
        </div>
  </div>
  <!--end item-->

  </div>

  <div class="col-md-6">
  <div class="col-md-4">
  <div class="container">
<label class="text-white" for="name"> Unggah Kartu Keluarga (KK) </label>
</div>
</div>
 <div class="col-md-12">
    <div class="kv-main">   
    <asp:FileUpload CssClass="file" ID="fuKK" runat="server" />        
                
            <br />
    </div>
</div>
<!--end item-->
</div>
</div>
<div class="col-md-12">
<div class="col-md-6">
<div class="col-md-4">
  <div class="container">
<label class="text-white" for="name"> Unggah Surat Kelahiran </label>
</div>
</div>
 <div class="col-md-12">
    <div class="kv-main">           
    <asp:FileUpload CssClass="file" ID="fuSuratKelahiran" runat="server" />
            <br />
    </div>
</div>
<!--end item-->
</div>

<div class="col-md-6">
<div class="col-md-4">
  <div class="container">
<label class="text-white" for="name"> Unggah Kutipan Akta Nikah </label>
</div>
</div>
 <div class="col-md-12">
    <div class="kv-main">           
    <asp:FileUpload CssClass="file" ID="fuAktaNikah" runat="server" />
            <br />
    </div>
</div>
<!--end item-->
</div>

</div>
<div class="col-md-12 col-md-offset-5">
<a class="btn btn-medium btn-dark btn-anim-1 uppercase xround-4" id="btnDaftar" runat="server"><i class="" aria-hidden="true"></i> <span>Daftar</span></a>
</div>
</div>
  <br />
  <br />
  <br />
  <br />
  

  </div>
  
  </section>
            <div class="clearfix">
            </div>
            <!-- end section -->
        </asp:View>
        <asp:View ID="vHasil" runat="server">
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
            <div class="col-md-12 text-center">
        <h4 class="uppercase">
            <%=msg %></h4>
    <a class="btn btn-white btn-medium btn-round uppercase" href="Beranda2.aspx">Halaman Utama
    <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    <a class="btn btn-white btn-medium btn-round uppercase" href="CekStatus.aspx">Cek Status<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    
    </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
