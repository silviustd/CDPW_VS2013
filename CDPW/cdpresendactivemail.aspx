<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cdpresendactivemail.aspx.cs" Inherits="CDPW.cdpresendactivemail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="container">
        <asp:PlaceHolder ID="phFormRecoverPasswd" runat="server">
            <div id="main-1" style="width: 420px; height: 250px; margin: 130px auto 200px;">
                <div id="col-1" style="border: none;">
                    <ul class="nav">
                        <li><a class="current">Resend Activation Email</a></li>
                    </ul>
                    <div class="list-wrap">
                        <ul id="tab-1">
                            <li>
                                <fieldset id="recoverPasswd">
                                    <p style="margin-bottom:5px;">
                                        <asp:TextBox ID="txtEmail" CssClass="validate[required,custom[email]]" runat="server" placeholder="Email" style="margin-top: 10px;"/>
                                    </p>
                                    <p/>
                                    <br/>
                                    <p id="recovButton">
                                        <label>
                                            &nbsp;</label><asp:Button ID="btnSend" Text="Resend activation password" OnClick="btnSend_Click" runat="server" style="margin-left: 41px;"/>
                                    </p>
                                </fieldset>
                            </li>
                        </ul>

                    </div>
        </asp:PlaceHolder>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#form1").validationEngine({ promptPosition: "topRight", autoHidePrompt: true, autoHideDelay: 3000, fadeDuration: 0.3 });
        });
    </script>
</asp:Content>
