<%@ Page Title="" Language="VB" MasterPageFile="~/assets/MasterPage.master" AutoEventWireup="false" CodeFile="FormEditProfil.aspx.vb" Inherits="assets_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="col-md-8 col-md-offset-2">
        <div class="clearfix">
        </div>
        <br>
        <br>
        <div id="divPopup" runat="server" visible="false" class="col-md-12 nopadding">
            <div id="divBox" runat="server">
                <span class="alert-closebtn" onclick="this.parentElement.style.display='none';">×</span>
                &nbsp;<%=msg%>
            </div>
        </div>
        <div class="form-body bg-light">
            <div class="row">
                <h4 class="uppercase">
                    Edit Profil Pelapor</h4>
                <div class="col-md-6">
                    <label class="lable-text" for="name">
                        NIK</label>
                    <asp:TextBox TextMode="SingleLine" ID="txtNIK" runat="server" CssClass="input-1"
                         />
                </div>
                <div class="col-md-6">
                    <label class="lable-text" for="phone">
                        Nama</label>
                    <asp:TextBox TextMode="SingleLine" ID="txtNama" runat="server" CssClass="input-1"
                        />
                </div>
            </div>
            <!-- end row -->
            <div class="row">
                <div class="col-md-6">
                    <label class="lable-text" for="phone">
                        Email</label>
                    <asp:TextBox TextMode="Email" ID="txtEmail" runat="server" CssClass="input-1"  />
                </div>
                <div class="col-md-6">
                    <label class="lable-text" for="phone">
                        No HP</label>
                    <asp:TextBox TextMode="SingleLine" ID="txtNoHP" runat="server" CssClass="input-1"
                         />
                </div>
            </div>
            <!-- end row -->
            <div class="row">
                <div class="col-md-6">
                    <label class="lable-text" for="email">
                        No KK</label>
                    <asp:TextBox TextMode="SingleLine" ID="txtNoKK" runat="server" CssClass="input-1"
                         />
                </div>
                <div class="col-md-6">
                    <label class="lable-text" for="phone">
                        Kata Sandi</label>
                    <asp:TextBox TextMode="SingleLine" ID="txtPassword" runat="server" CssClass="input-1"
                         />
                </div>
            </div>
            <!-- end row -->
            <div class="row">
                <br>
                <div class="col-md-offset-3 col-md-6 text-center">
                    <button id="btnSimpan" runat="server" class="btn btn-dark-3 btn-fullwidth uppercase">
                        <i class="fa fa-paper-plane"></i>Simpan</button>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!--end form body-->
    </div>
</asp:Content>

