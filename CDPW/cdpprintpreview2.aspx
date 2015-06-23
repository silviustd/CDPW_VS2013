<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cdpprintpreview2.aspx.cs" Inherits="CDPW.cdpprintpreview2" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />--%>
    <title></title>
    <meta name="description" content="" />
    <meta http-equiv="content-language" content="en" />
    <link href="theme/css.ashx" rel="stylesheet" type="text/css" />
    <script src="theme/js.ashx" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="Scriptmanager1" runat="server" />
        <asp:PlaceHolder ID="phReport" runat="server">
            <rsweb:ReportViewer ID="rwPrintPreview" runat="server" SizeToReportContent="true" ShowPrintButton="true" ProcessingMode="Local">
                <LocalReport DisplayName="Testare" EnableExternalImages="true"></LocalReport>
            </rsweb:ReportViewer>

            <script type="text/javascript">
                $(document).ready(function () {
                    if (($.browser.mozilla || $.browser.webkit) && !$("#ff_print").length) {
                        var isIE11 = !!navigator.userAgent.match(/Trident.*rv[ :]*11\./)
                        if (!isIE11) {
                            try {
                                var ControlName = 'rwPrintPreview';
                                var innerTbody = '<tbody><tr><td><input type="image" style="border-width: 0px; padding: 2px; height: 16px; width: 16px;" alt="Print" src="/Reserved.ReportViewerWebControl.axd?OpType=Resource&amp;Version=10.0.40219.1&amp;Name=Microsoft.Reporting.WebForms.Icons.Print.gif" title="Print"></td></tr></tbody>';
                                var innerTable = '<table title="Print" onclick="PrintFunc(\'' + ControlName + '\'); return false;" id="ff_print" style="border: 1px solid rgb(236, 233, 216); background-color: rgb(236, 233, 216); cursor: default;">' + innerTbody + '</table>'
                                var outerDiv = '<div style="display: inline; font-size: 8pt; height: 30px;" class=" "><table cellspacing="0" cellpadding="0" style="display: inline;"><tbody><tr><td height="28px">' + innerTable + '</td></tr></tbody></table></div>';

                                $("#rwPrintPreview_ctl05 > div").append(outerDiv);

                            }
                            catch (e) { alert(e); }
                        }                        
                    }
                });

                function PrintFunc() {
                    var strFrameName = ("printer-" + (new Date()).getTime());
                    var jFrame = $("<iframe name='" + strFrameName + "'>");
                    jFrame
                    .css("width", "1px")
                    .css("height", "1px")
                    .css("position", "absolute")
                    .css("left", "-2000px")
                    .appendTo($("body:first"));

                    var objFrame = window.frames[strFrameName];
                    var objDoc = objFrame.document;
                    var jStyleDiv = $("<div>").append($("style").clone());

                    objDoc.open();
                    objDoc.write($("head").html());
                    objDoc.write($("#rwPrintPreview_ctl09").html());
                    objDoc.close();
                    objFrame.print();

                    setTimeout(function () { jFrame.remove(); }, (60 * 1000));
                }
            </script>
        </asp:PlaceHolder>

        <asp:PlaceHolder ID="phError" runat="server" Visible="false">
            <span class="span50"></span>
            <p id="pError" class="msg_box msg_error corners">
                <asp:Literal ID="ltrError" runat="server" Text="Sorry, an error has occured. Please try again." />
            </p>
        </asp:PlaceHolder>
    </form>
</body>
</html>