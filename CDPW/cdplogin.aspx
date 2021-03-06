﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="cdplogin.aspx.cs" Inherits="CDPW.cdplogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" EnableViewState="False">
    <script type="text/javascript">

        $(function () {
            $("#col-1").organicTabs({
                "speed": 200
            });
            $("a#btnNoSignUp").hover(function () {
                $("span.bullet-1").addClass("visible");
            },
				function () {
				    $("span.bullet-1").removeClass("visible");
				});
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <asp:PlaceHolder ID="phLoginMessages" runat="server" Visible="false"><span class="span50">
    </span>
        <asp:Label runat="server" class="msg_box msg_info corners msg_box_text14" ID="ltrLoginMessages"
            Text="There has been a problem verifying your credentials.Please email us at info@columnasoft.com"> 
        </asp:Label>
    </asp:PlaceHolder>

    <asp:PlaceHolder ID="phSignUpGoback" runat="server" Visible="false"><span class="30">
    </span>
        <div style="text-align: center;">
            <a href="javascript:void()" onclick="history.go(-1);">Go back to Sign Up form</a>
        </div>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phError" runat="server" Visible="false"><span class="span50"></span>
        <p id="pError" class="msg_box msg_box_hide msg_error corners msg_box_text14">
            <asp:Literal ID="ltrError" Text="Sorry, an error has occured. Please try again."
                runat="server" />
        </p>
    </asp:PlaceHolder>
    <div id="container">
        <div id="main-1" class="main-1">
            <asp:PlaceHolder ID="phLoginSignUp" runat="server">
                <div id="col-1">
                    <ul class="nav">
                        <li><a href="#tab-1" class="current">I already have an account</a></li>
                        <li><a href="#tab-2">I don’t have an account</a></li>
                    </ul>
                    <div class="list-wrap">
                        <ul id="tab-1">
                            <li>
                                <p>
<%--                                    <label for="txtLoginName">
                                        Username / Email</label>--%>
                                    <asp:TextBox ID="txtLoginName" CssClass="validate[required,minSize[6]]" runat="server" placeholder="Username / Email" style="margin-top: 20px;"/>
                                    <span class="required">*</span>
                                </p>
                                <p>
<%--                                    <label for="txtLoginPasswd">
                                        Password</label>--%>
                                    <asp:TextBox ID="txtLoginPasswd" TextMode="Password" CssClass="validate[required,minSize[6]]" runat="server" placeholder="Password"  />
                                    <span class="required">*</span>
                                </p>
                                <p>
                                    <label>
                                        &nbsp;</label>
                                    <asp:Button ID="btnLogin" Text="" OnClick="btnLogin_Click" runat="server" />
                                </p>
                                <p>
                                    <label>
                                        &nbsp;</label><a href="cdprecoverpasswd.aspx" class="a1">Forgot password ?</a></p>
                            </li>
                        </ul>
                        <ul id="tab-2" class="hide">
                            <li>
                                <p>
<%--                                    <label for="txtSignUName">
                                        Username</label>--%>
                                    <asp:TextBox ID="txtSignUName" runat="server" CssClass="validate[minSize[6]]" placeholder="Username" style="margin-top: 20px;"/>
                                </p>
                                <p>
<%--                                    <label for="txtSignEmail">
                                        Email</label>--%>
                                    <asp:TextBox ID="txtSignEmail" CssClass="validate[required,custom[email]]" runat="server" placeholder="Email"/>
                                    <span class="required">*</span>
                                </p>
                                <p>
<%--                                    <label for="txtSignPasswd">
                                        Password</label>--%>
                                    <asp:TextBox ID="txtSignPasswd" TextMode="Password" CssClass="validate[required,minSize[6]]"
                                        runat="server" placeholder="Password" />
                                    <span class="required">*</span>
                                </p>
                                <p>
<%--                                    <label for="txtSignPasswdConfirm">
                                        Confirm password</label>--%>
                                    <asp:TextBox ID="txtSignPasswdConfirm" TextMode="Password" CssClass="validate[required,equals[txtSignPasswd]]"
                                        runat="server" placeholder="Confirm Password" />
                                    <span class="required">*</span>
                                </p>
                                <p>
                                    <label>
                                        &nbsp;</label>
                                    <asp:Button ID="btnSignUp" Text="" CssClass="button" OnClick="btnSignUp_Click" runat="server" />
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="col-2">
                    <p>
                        <span class="bullet-1">
                            <asp:Image ID="imgContinueCheck" runat="server" AlternateText="" /></span>
                        <asp:LinkButton ID="btnNoSignUp" Text="Continue without login or sign up" OnClick="btnNoSignUp_Click" runat="server" style="margin-top: 110px;"/>
                    </p>
                    <%--<div align="center"><a href="cdpprintpreview.aspx?Report=USAForm" class="a1">Print US Form</a></div>
					<div align="center"><a href="cdpprintpreview.aspx?Report=USAFormB" class="a1">Print US Form back</a></div>
					<div align="center"><a href="cdpprintpreview.aspx?Report=CANForm" class="a1">Print Canada Form</a></div>--%>
                </div>
            </asp:PlaceHolder>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#form1").validationEngine({ promptPosition: "topRight", autoHidePrompt: true, autoHideDelay: 3000, fadeDuration: 0.3 });
            });
        </script>
    </div>
    <script type="text/javascript">

        if (document.getElementById("ltrLoginMessages") != null || document.getElementById("pError") != null || $(".msg_box").size() > 0) {
            document.getElementById("main-1").className += " main-1-message";
        }


    </script>
</asp:Content>
