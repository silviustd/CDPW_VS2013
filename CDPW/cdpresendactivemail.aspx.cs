using CDPW.BLL;
using CDPW.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDPW
{
    public partial class cdpresendactivemail : System.Web.UI.Page
    {
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");
            try
            {
                string email = txtEmail.Text;
                string uName = String.Empty;

                //Boolean UseAlternateEmail = this.chkAEmail.Checked;

                if (Users.Check_Email(email))
                {

                    String signupEmail = txtEmail.Text;
                    String urlLogin = String.Format("<a href=\"{2}{3}?ma={0}&sg={1}\">{4}</a>", signupEmail, System.Guid.NewGuid(), Request.Url.GetLeftPart(UriPartial.Authority), ResolveUrl("~/cdpconfirmreg.aspx"), CDPWMessages.MSG_please_click_here);

                    string emailTemplate = Template.readTemplateD("[link_login]", urlLogin, HttpContext.Current.Server.MapPath("components/signup.html"));
                    Mail.Send(signupEmail, null, null, CDPWMessages.EMAIL_SUBJECT_SIGNUP_CONFIRM, emailTemplate, System.Net.Mail.MailPriority.Normal);


                    phFormRecoverPasswd.Visible = false;
                    Helpers.toggleMasterMessage(this, true, "MSG_RESIGN_UP_S", "msg_box_v msg_info_mm ", "cdplogin.aspx");

                }
                else
                {
                    phFormRecoverPasswd.Visible = false;
                    Helpers.toggleMasterMessage(this, true, "ERR_NO_EMAIL", "msg_box_v msg_alert_mm", "cdplogin.aspx");
                }
            }
            catch (Exception ex)
            {
                phFormRecoverPasswd.Visible = false;
                Helpers.toggleMasterMessage(this, true, "ERR_MSG_TRY_AGAIN", "msg_box_v msg_error_mm span50", "cdprecoverpasswd.aspx");
                if (log.IsErrorEnabled) log.Error(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Error", ex);
            }

            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
        }
    

    }
}