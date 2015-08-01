<%@ Page Title="" Language="C#" MasterPageFile="~/SiteP.Master" AutoEventWireup="true"
    CodeBehind="DUSAForm_print2.aspx.cs" Inherits="CDPW.DUSAForm_print2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <script type="text/javascript">

        function MsgFadeOut() {
            //$('#phMessage').css('visibility', 'visible');
            setTimeout("$('#lblMessage').fadeOut(2000,'linear')", 3000);
            $('#discl_USA').css('visibility', 'hidden');
            setTimeout("$('#discl_USA').css('visibility', 'visible')", 8000);
            setTimeout("$('#discl_USA').fadeIn(2000,'linear')", 10000);
        }

    </script>

    
        <div id="top">
            <asp:Label class="msg_box_md msg_ok_md corners" ID="lblMessage" Style="left: 260px;"
                Text="Data has been saved." runat="server" ViewStateMode="Enabled" Visible="false" ClientIDMode="Static" />
        </div>
        <div class="mainp-3-container" style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;">
            <!-- front -->

            <!-- back -->
            <div class="mainp-3 backp" style="">

                <br />
                <table class="DUSAForm1 DUSAForm1_top">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDescrArticles1" runat="server" class="text text-7" original-title="37 characters"
                                MaxLength="37" AutoPostBack="False" onchange="javascript:ChangeAlert();" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtArticlesValue1" runat="server" class="text-10 textAlignRight"
                                original-title="####[.]## (<9 digits>.<2 digits>)" MaxLength="12" AutoPostBack="False" onchange="javascript:ChangeAlertDUSAArticlesVal();" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDescrArticles2" runat="server" class="text text-7" original-title="37 characters"
                                MaxLength="37" AutoPostBack="False" onchange="javascript:ChangeAlert();" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtArticlesValue2" runat="server" class="text-10 textAlignRight "
                                original-title="####[.]## (<9 digits>.<2 digits>)" MaxLength="12" AutoPostBack="False"
                                onchange="javascript:ChangeAlertDUSAArticlesVal();" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDescrArticles3" runat="server" class="text text-7" original-title="37 characters"
                                MaxLength="37" AutoPostBack="False" onchange="javascript:ChangeAlert();" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtArticlesValue3" runat="server" class="text-10 textAlignRight "
                                original-title="####[.]## (<9 digits>.<2 digits>)" MaxLength="12" AutoPostBack="False"
                                onchange="javascript:ChangeAlertDUSAArticlesVal();" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDescrArticles4" runat="server" class="text  text-7" original-title="37 characters"
                                MaxLength="37" AutoPostBack="False" onchange="javascript:ChangeAlert();" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtArticlesValue4" runat="server" class="text-10 textAlignRight "
                                original-title="####[.]## (<9 digits>.<2 digits>)" MaxLength="12" AutoPostBack="False"
                                onchange="javascript:ChangeAlertDUSAArticlesVal();" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDescrArticles5" runat="server" class="text text-7" original-title="37 characters"
                                MaxLength="37" AutoPostBack="False" onchange="javascript:ChangeAlert();" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtArticlesValue5" runat="server" class="text-10 textAlignRight "
                                original-title="####[.]## (<9 digits>.<2 digits>)" MaxLength="12" AutoPostBack="False"
                                onchange="javascript:ChangeAlertDUSAArticlesVal();" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDescrArticles6" runat="server" class="text text-7" original-title="37 characters"
                                MaxLength="37" AutoPostBack="False" onchange="javascript:ChangeAlert();" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtArticlesValue6" runat="server" class="text-10 textAlignRight"
                                original-title="####[.]## (<9 digits>.<2 digits>)" MaxLength="12" AutoPostBack="False"
                                onchange="javascript:ChangeAlertDUSAArticlesVal();" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtTotalValArticles" runat="server" class="text-10 textAlignRight "
                                original-title="####[.]## (<9 digits>.<2 digits>)" AutoPostBack="False" onchange="javascript:ChangeAlert();"
                                ></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

  

    <script type="text/javascript">
        $(function () {
            $('input.text').tipsy({ gravity: 's' });
        });

        $(document).ready(function () {
            $('.open-1').click(function () {
                $('p.disclaimer-4').css('height', '35px').slideDown('slow');
                $('a.open-1').css('display', 'none').fadeOut("slow");
                $('a.open-2').css('display', 'inline').fadeIn("slow");
            });
            $('.open-2').click(function () {
                $('p.disclaimer-4').css('height', '10px').slideDown('slow');
                $('a.open-1').css('display', 'inline').fadeIn("slow");
                $('a.open-2').css('display', 'none').fadeOut("slow");
            });
            var d = new Date();
            $("#txtdobDay").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '-99Y' + ':' + (d.getFullYear()),
                minDate: '-99Y',
                maxDate: 0,
                dateFormat: "dd/mm/yy",
                altField: "#txtdobMonth",
                altFormat: "mm",
                onSelect: function (dateText, picker) {
                    $('#txtdobDay').val('');
                    $('#txtdobDay').val(dateText.split(/\//)[0]);
                    $('#txtdobYear').val(dateText.split(/\//)[2]);
                    ChangeAlert();
                }
            });

            $("#txtdobMonth").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '-99Y' + ':' + (d.getFullYear()),
                minDate: '-99Y',
                maxDate: 0,
                dateFormat: "dd/mm/yy",
                altField: "#txtdobDay",
                altFormat: "dd",
                onSelect: function (dateText, picker) {
                    $('#txtdobMonth').val('');
                    $('#txtdobMonth').val(dateText.split(/\//)[1]);
                    $('#txtdobYear').val(dateText.split(/\//)[2]);
                    ChangeAlert();
                }
            });

            $("#txtdobYear").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '-99Y' + ':' + (d.getFullYear()),
                minDate: '-99Y',
                maxDate: 0,
                dateFormat: "dd/mm/yy",
                altField: "#txtdobDay",
                altFormat: "dd",
                onSelect: function (dateText, picker) {
                    $('#txtdobYear').val('');
                    $('#txtdobYear').val(dateText.split(/\//)[2]);
                    $('#txtdobMonth').val(dateText.split(/\//)[1]);
                    ChangeAlert();
                }
            });

            $("#txtSignDate").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '-99Y' + ':' + (d.getFullYear()),
                minDate: '-99Y',
                maxDate: 0,
                dateFormat: "dd/mm/yy"
            });


            //			$("#txtArticlesValue1").blur(function () {
            //				var suma = 0.00;

            //				suma = $("#txtArticlesValue1").val();
            //				$("#txtTotalValArticles").val() = suma.toFixed(2);
            //			});

            //		    function CalcValue() {
            //		        var suma = 0.00;

            //		        suma = $("#txtArticlesValue1").val();
            //		        //                +$("#txtArticlesValue2").val() + $("#txtArticlesValue3").val();
            //		        //		        suma = suma + $("#txtArticlesValue4").val() + $("#txtArticlesValue5").val() + $("#txtArticlesValue6").val();

            //		        alert("Suma: " + suma);

            //		        $("#txtTotalValArticles").val() = suma.toFixed(2);
            //		    }

            $("#form1").validationEngine({ promptPosition: "topRight", autoHidePrompt: true, autoHideDelay: 3000, fadeDuration: 0.3 });
        });
    </script>
    <script type="text/javascript">

        //        var purl = window.location.href;
        //        if (purl.indexOf("DUSAForm.aspx") > 0) {
        //            for (var i = 1; i < 7; i++) {
        //                var ctrl = "txtArticlesValue" + i;
        //                document.getElementById(ctrl).onblur = function () { sumVal() };
        //            }
        //        }

        function ChangeAlertDUSAArticlesVal() {
            sumVal();
            var sendserver = 'valchange';
            CallServer(sendserver, "");
        }


        function sumVal() {

            var artTotal = new Number(0);
            var isValue = new Boolean(false);

            for (var i = 1; i < 7; i++) {
                var ctrl = "txtArticlesValue" + i;
                if (!isNaN(document.getElementById(ctrl).value)) {
                    artTotal = artTotal + Number(document.getElementById(ctrl).value);
                    if (document.getElementById(ctrl).value.length > 0) { isValue = true; }
                }
            }

            if (Number(isValue) > 0) {
                document.getElementById("txtTotalValArticles").value = artTotal.toString();
            }
            else {
                document.getElementById("txtTotalValArticles").value = '';
            }
        }

        //        function checkBD() {

        //            var sBD = document.getElementById("txtdobYear") + "/" + document.getElementById("txtdobMonth") + "/" + document.getElementById("txtdobDay");
        //            var pattern = new RegExp(/^(\d{4})[\/\-\.](0?[1-9]|1[012])[\/\-\.](0?[1-9]|[12][0-9]|3[01])$/);
        //            var match = pattern.exec(sBD);
        //            if (match == null)
        //                return false;

        //            var year = match[1];
        //            var month = match[2] * 1;
        //            var day = match[3] * 1;
        //            var date = new Date(year, month - 1, day); // because months starts from 0.

        //            if (!(date.getFullYear() == year && date.getMonth() == (month - 1) && date.getDate() == day)) {
        //                return "Not a valid date";
        //            }
        //        }


        function checkBD(field, rules, i, options) {
            var dyear = $("#txtdobYear").val();
            var dmonth = $("#txtdobMonth").val();
            var dday = $("#txtdobDay").val();
            var dat = new Date(dyear, dmonth, dday);
            var dd = dmonth + "/" + dday + "/" + dyear;

            if (!esteData(dd)) {
                return options.allrules.date2.alertText;
            }
        }

        function numVal(field, rules, i, options) {
            var fId = field[0].id;
            var numf = document.getElementById(fId).value;
            //var numf = document.getElementById("txtArticlesValue1").value;
            //var numf = field.val();
            //alert($.number(numf, 2))

            var nA = numf.split(",");
            var nS = "";
            for (i = 0; i < nA.length; i++) {
                nS = nS + nA[i];
            }

            if (!isNaN(nS)) {
                var nN = new Number(nS);
                document.getElementById(field[0].id).value = $.number(nN, 2);
                //field.value = $.number(nN, 2);
                if (!(nN >= 0 && nN <= 214748.3647)) {
                    return "The value should be between 0 and 214,748.3647";
                }
            }
            else {
                return "The value should be between 0 and 214,748.3647";
            }


            var artTotal = new Number(0);
            var isValue = new Boolean(false);

            for (var i = 1; i < 7; i++) {
                var ctrl = "txtArticlesValue" + i;
                if (!isNaN(jsnumber(document.getElementById(ctrl).value))) {
                    if (document.getElementById(ctrl).value.length > 0) {
                        isValue = true;
                        artTotal = artTotal + jsnumber(document.getElementById(ctrl).value);
                    }
                }
            }

            if (Number(isValue) > 0) {
                document.getElementById("txtTotalValArticles").value = $.number(artTotal.toString(), 2);
            }
            else {
                document.getElementById("txtTotalValArticles").value = '';
            }

        }

        function jsnumber(numf) {

            var nA = numf.split(",");
            var nS = "";
            for (i = 0; i < nA.length; i++) {
                nS = nS + nA[i];
            }

            return new Number(nS);
        }

    </script>
</asp:Content>
