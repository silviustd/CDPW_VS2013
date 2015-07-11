<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="cdpmysettings.aspx.cs" Inherits="CDPW.cdpmysettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>


    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="mainSettings">
                <asp:Label class="msg_box_md msg_ok_md corners" ID="lblMessage" Style="left: 240px;"
                    Text="Data has been saved." runat="server" ViewStateMode="Enabled" Visible="false" ClientIDMode="Static" />
                <div>
                    <asp:PlaceHolder ID="phSettings" runat="server">
                        <fieldset style="margin-top:10px;">
                            <legend>Account info</legend>
                            <p>
                                <label for="txtUName">
                                    Username</label>
                                <asp:TextBox ID="txtUName" runat="server" class="text text-1" MaxLength="50" original-title="50 characters" />
                            </p>
                            <p>
                                <label for="txtEmail">
                                    <span class="float-left">Email</span> <span class="required special">*</span></label>
                                <asp:TextBox ID="txtEmail" runat="server" class="text text-1" original-title="150 characters" MaxLength="150" />
                            </p>
                            <p>
                                <label for="txtPwd">
                                    <span class="float-left">Password</span> <span class="required special validate[custom[email]]">*</span></label>
                                <asp:TextBox ID="txtPwd" runat="server" type="password" class="text text-1-disable" MaxLength="50" original-title="50 characters"/>
                                <a class="edit edit-pass visible show-confirm-password">
                                    <img src="theme/clasic/images/edit-1.png" alt="" /></a> <a class="apply hidden hide-confirm-password"
                                        title="Apply changes">
                                        <img src="theme/clasic/images/apply.png" alt="" /></a>
                            </p>
                            <p>
                                <label for="txtAEmail">
                                    Alternate email</label>
                                <asp:TextBox ID="txtAEmail" runat="server" class="text text-1 validate[custom[email]]" MaxLength="150" original-title="150 characters"/>
                            </p>
                            <p class="hidden">
                                <label for="txtPwdConf">
                                    <span class="float-left">Confirm pass.</span> <span class="required special">*</span></label>
                                <asp:TextBox ID="txtPwdConf" runat="server" type="password" class="text text-1" MaxLength="50" original-title="50 characters"/>
                            </p>
                        </fieldset>
                        <fieldset style="margin-bottom: 10px;">
                            <legend>General info</legend>
                            <p>
                                <label for="ddlSal">
                                    Salutation</label>
                                <asp:DropDownList ID="ddlSal" runat="server" class="select-1">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Ms.</asp:ListItem>
                                    <asp:ListItem>Mrs.</asp:ListItem>
                                    <asp:ListItem>Mr. </asp:ListItem>
                                </asp:DropDownList>
                            </p>
                            <p>
                                <label for="txtDOB">
                                    Date of Birth</label>
                                <asp:TextBox ID="txtDOB" runat="server" class="text text-1 validate[custom[date]" original-title="mm/dd/yyyy" />
                            </p>
                            <p>
                                <label for="txtFName">
                                    First Name</label>
                                <asp:TextBox ID="txtFName" runat="server" class="text text-1" MaxLength="50" original-title="50 characters"/>
                            </p>
                            <p style="padding-top: 10px;">
                                <label for="rblGender">
                                    Gender</label>
                                <asp:RadioButtonList ID="rblGender" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"
                                    TextAlign="Left" class="gender">
                                    <asp:ListItem Value="1" Text="Male" Selected="True" />
                                    <asp:ListItem Value="2" Text="Female" />
                                    <asp:ListItem Value="3" Text="Rather not say" />
                                </asp:RadioButtonList>
                            </p>
                            <p>
                                <label for="txtMName">
                                    Middle Name</label><asp:TextBox ID="txtMName" runat="server" class="text text-1" MaxLength="50" original-title="50 characters"/>
                            </p>
                            <p>
                                <label for="txtLName">
                                    Last Name</label><asp:TextBox ID="txtLName" runat="server" class="text text-1" MaxLength="50" original-title="50 characters"/>
                            </p>
                        </fieldset>
                        <p style="padding: 0px 0 0 20px;">
                            <asp:CheckBox ID="chkUpdInfoCF" runat="server" TextAlign="Left" Checked="false" />
                            Update info for Customs Forms
                        </p>
                        <fieldset style="margin-top: 20px; margin-bottom: 10px;">
                            <legend>Residential Address</legend>
                            <p>
                                <label for="txtStrNo">
                                    Street Number</label><asp:TextBox ID="txtStrNo" runat="server" class="text text-1 validate[custom[smallintno]" MaxLength="5" original-title="5 numerics"/>
                            </p>
                            <p>
                                <label for="txtStrName">
                                    Street Name</label><asp:TextBox ID="txtStrName" runat="server" class="text text-1" MaxLength="100" original-title="100 characters"/>
                            </p>
                            <p>
                                <label for="txtStrType">
                                    Street Type</label><asp:TextBox ID="txtStrType" runat="server" class="text text-1" MaxLength="15" original-title="15 characters"/>
                            </p>
                            <p>
                                <label for="txtStrDir">
                                    Street Direction</label><asp:TextBox ID="txtStrDir" runat="server" class="text text-1" MaxLength="4" original-title="4 characters"/>
                            </p>
                            <p>
                                <label for="txtUNo">
                                    Unit/Apt Number</label><asp:TextBox ID="txtUNo" runat="server" class="text text-1" MaxLength="10" original-title="10 characters"/>
                            </p>
                            <p>
                                <label for="txtCity">
                                    City</label><asp:TextBox ID="txtCity" runat="server" class="text text-1" MaxLength="50" original-title="50 characters"/>
                            </p>
                            <p style="clear: both;">
                                <label>
                                    &nbsp;</label>
                            </p>
                            <p>
                                <label for="txtPCode">
                                    Postal Code</label><asp:TextBox runat="server" ID="txtPCode" value="" class="text text-1" MaxLength="10" original-title="10 characters"/>
                            </p>
                            <p>
                                <label for="ddlCountry">
                                    Country</label>
                                <asp:DropDownList ID="ddlCountry" runat="server" class="select-1" Style="width: 273px;"
                                    AutoPostBack="true" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" />
                            </p>
                            <p>
                                <label for="ddlProv">
                                    Province / State</label>
                                <asp:DropDownList ID="ddlProv" runat="server" class="select-1" Style="width: 273px;" />
                            </p>
                        </fieldset>
                        <p style="padding: 0px 0 0 20px;">
                            <asp:CheckBox ID="chkUpdAddressCF" runat="server" TextAlign="Left" Checked="false" />
                            Update address for Customs Forms
                        </p>
<%--                        <p style="padding: 10px 0 0 20px; margin-top: 10px;">
                            <asp:CheckBox ID="chkNotKeepData" runat="server" TextAlign="Left" />
                            Do not keep data (Passport, Address, Date of Birth and Citizenship info will be
                            deleted on logout)
                        </p>--%>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="phCanFormSuccess" runat="server" Visible="false"><span class="span50"></span>
                        <p class="msg_box msg_ok corners">
                            <asp:Literal ID="ltrCanFormSuccess" Text="The form was submited with success." runat="server" />
                        </p>
                    </asp:PlaceHolder>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div id="button-form-2">
        <asp:Button ID="btnSaveForm" Text="Save" runat="server" OnClick="btnSaveForm_Click" />
        <asp:LinkButton ID="btnCancel2" Text="Cancel" runat="server" OnClick="btnCancel2_Click" />
        <a href="cdpselectpay.aspx" id="custom-forms-2">Customs Forms</a> <a href="cdplogout.aspx"
            id="logout-2">Logout</a>
    </div>
    <script type="text/javascript">

        $(function () {
            $('input.text').tipsy({ gravity: 's' });
        });

        var d = new Date();
        $("#txtDOB").datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: (d.getFullYear() - 100) + ':' + (d.getFullYear()),
            defaultDate: new Date((d.getFullYear() - 18), 1 - 1, 1),
            minDate: new Date((d.getFullYear() - 100), 1 - 1, 1),
            maxDate: new Date((d.getFullYear()), d.getMonth(), d.getDate())
        });
        $(document).ready(function () {
            $("#form1").validationEngine({ promptPosition: "topRight", autoHidePrompt: true, autoHideDelay: 3000, fadeDuration: 0.3 });
        });
        //});
    </script>
</asp:Content>
