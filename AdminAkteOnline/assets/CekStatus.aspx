<%@ Page Title="" Language="VB" MasterPageFile="~/assets/MasterPage.master" AutoEventWireup="false"
    CodeFile="CekStatus.aspx.vb" Inherits="assets_CekStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="col-md-offset-4 col-md-4 text-center">
        <h4>
            Cek Status Akta Kelahiran</h4>
        <br />
        <asp:Repeater ID="rStatus" runat="server">
            <ItemTemplate>
                <div style="background-color: #0000004a">
                    <div class="text">
                        <%# Eval("nama_lengkap")%> <%# Eval("status") %>
                    </div>
                </div>
                <br />
                <!--end item-->
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
