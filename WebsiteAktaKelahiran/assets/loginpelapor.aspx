<%@ Page Title="" Language="VB" MasterPageFile="~/assets/MasterPage.master" AutoEventWireup="false"
    CodeFile="loginpelapor.aspx.vb" Inherits="assets_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
<asp:UpdatePanel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="col-md-offset-3 col-md-6">
    
        <div class="clearfix">
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
       <div class="col-md-12 nopadding" runat="server" id="divError" visible="false">
            <div class="alert-box danger">
                <span class="alert-closebtn" onclick="this.parentElement.style.display='none';">×</span>
                <strong><i class="fa fa-info" aria-hidden="true"></i>&nbsp; Gagal</strong> &nbsp;
                Email atau Password salah!
            </div>
        </div>
        <div class="form-body border-light">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-12 text-center">
                        <h4 class="uppercase">
                            Silahkan Login</h4>
                    </div>
                    <label class="lable-text" for="name">
                        Username
                    </label>
                    <asp:TextBox TextMode="Email" ID="txtEmail" runat="server" CssClass="input-1" placeholder="Email" />
                </div>
                <div class="col-md-12">
                    <label class="lable-text" for="email">
                        Password</label>
                        <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" CssClass="input-1" placeholder="Password" />
                </div>
            </div>
            <!-- end row -->
            <div class="row">
                <br />
                <div class="col-md-7 text-left">
                    <button runat="server" id="btnLogin" class="btn btn-dark-3 btn-half-fullwidth uppercase" type="submit">
                        Login</button>
                    <asp:SqlDataSource ID="sdsLogin" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:akta_kelahiranLogin %>" 
                        
                        SelectCommand="SELECT * FROM [Pelapor] WHERE (([email] = @email) AND ([password] = @password))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="txtPassword" Name="password" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-md-5 text-left">
                    <label class="pull-right">
                        <input id="Checkbox1" class="boolean optional" type="checkbox" value="1" name="user_inline[active]">
                        Remember me
                    </label>
                </div>
                <div class="col-md-12">
                    <small>Belum Daftar? Silahkan</small><small><a href="FormDaftar.aspx"> Daftar</a></small></div>
            </div>
            <!-- end row -->
        </div>
        <!--end form body-->
    </div>
    <!--end item-->
    </asp:UpdatePanel>
</asp:Content>