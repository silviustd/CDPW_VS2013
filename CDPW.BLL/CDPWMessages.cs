using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDPW.BLL
{
    public class CDPWMessages
    {
        public static String MSG_MSG = "Your request has been processed.";
        public static String MSG_ACCT_NOT_ACTIVE = "The account is not activated. Please see your email account for the activation message.";
        //public static String NO_USER = "Sorry, there is no user  with the email address/username provided. In order to access the application, please Sign-Up by using &#60;I don't have an account&#62;.";
        public static String MSG_LOGIN_RECOVER = "<a href='cdprecoverpasswd.aspx'>Try to login here</a> or, if you forgot your password, try to recover here (link).";
        public static String MSG_SIGN_UP_S = "The sign up process completed with success. A confirmation message has been sent to the email address provided";
        public static String MSG_ACCOUNT_ACTIVATED = "Congratulations! You have activated your account.<br><a href={0}>To log in, please click here.</a>";
        public static String MSG_ACCOUNT_ALREADY_ACTIVATED = "Account is already activated.To log in, please click <a href={0}>here</a>";
        public static String MSG_RECOVER_PASSWORD = @"An email has been sent to the email address provided with instructions how to reset your passsword. 
                                                     <br/>Note that confirmation string expire in approximately 3 days.
                                                     <br/><a href={0}>Please click here to login.</a>";

        public static String MSG_RECOVER_PASSWORD_SUCCESS = @"You've successfully reset your password. An email has been sent to the email address provided with instructions how to access your account.
                                                            <br/><a href={0}>Please click here to login.</a>";
        public static String MSG_DATA_SAVED = "Data have been saved.";
        public static String MSG_SAVE_TO_PRINT = "Please Save first, then Print.";

        public static String MSG_EMAIL_TO_RESET_PASSWORD = "Yes, reset my password.";
        public static String MSG_EMAIL_PASSWORD_RESET = "Please log in here.";


        public static String ERR_MSG_LOGOUT_LOGIN_EMAIL = "Please <a href='cdplogout.aspx'> Log Out</a>  and Log in again.<br/>If the problem persists please <A HREF='mailto:office@columnasoft.com?subject={0}'>email us</A> with your Name, Address, Email and Plan";

        public static String ERR_NO_USER = "Sorry, there is no user  with the email address/username provided. In order to access the application, please Sign-Up by using <b>I don't have an account</b>.";

        public static String ERR_NO_EMAIL = "Sorry, there is no user with the email address provided.<br/><a href={0}>Please click here to try again.</a> ";
        public static String ERR_WRONG_PWD = "Sorry, the password you provided is not correct. If you forgot your password, try to recover it <a href='cdprecoverpasswd.aspx'>here</a>.";
        public static String ERR_SAME_USERNAME = "Sorry, there is another user registered with the same username.";
        public static String ERR_SAME_EMAIL = "Sorry, there is another user registered with this email address. If you forgot your password, <a href='cdprecoverpasswd.aspx'>try to recover it here</a>.";
        public static String ERR_RESET_PWD_MORE3DAYS = "The confirmation message was sent more than 3 days ago. <br/><a href={0}>Please click here to reset your password again.</a> ";
        public static String ERR_MSG_ERR = "There is a problem processing your request.";
        public static String ERR_MSG_ERR_TRY_AGAIN = "There has been a problem processing your request. Please try again.";
        public static String ERR_MSG_TRY_AGAIN = "Sorry, an error has occured. <a href={0}>Please click here to try again.</a>";

        //cdpconfirmreg
        public static String ERR_NO_USER_EMAIL = "Sorry, there is no user  with the email address/username provided. In order to access the application,<a href={0}> please Sign-Up here</a> by using <b>I don't have an account</b>.";
        public static String ERR_URL_INCORRECT = "Sorry, the URL doesn't include a neccessary information. Please access the email sent to you when you signed up.";


        public static String EMAIL_SUBJECT_RESET_PWD = "CDP - Reset your password request";
        public static String EMAIL_SUBJECT_SIGNUP_CONFIRM = "CDP - Sign-up confirm";
        public static String EMAIL_SUBJECT_NEW_PASSWORD = "CDP - New password to access your account";

        public static void SessionAddMessage(String SessionObjectID, String CtrlMessage, String MessageCode, String MsgStrItem, String CtrlMessageCss)
        {
            Dictionary<String, String> SessionObject;

            SessionObject = new Dictionary<String, String>();
            SessionObject.Add("MessageCode", MessageCode);
            SessionObject.Add("CtrlMessage", CtrlMessage);
            SessionObject.Add("StrMsgItem", MsgStrItem);
            SessionObject.Add("CssClass", CtrlMessageCss);
            HttpContext.Current.Session.Add(SessionObjectID, SessionObject);

        }

        public static void ProcessPageMessage(Page pg, String SessionObjectID, String PgCtrlMessage)
        {

            String CtrlMessage = String.Empty;
            String Message = String.Empty;
            String CtrlMessageCss = String.Empty;
            String StrMsgItem;

            Dictionary<String, String> WMessage = (Dictionary<String, String>)HttpContext.Current.Session[SessionObjectID];

            if (WMessage != null)
            {
                if (!WMessage.TryGetValue("MessageCode", out Message))
                {
                    Message = String.Empty;
                }
                if (!WMessage.TryGetValue("CtrlMessage", out CtrlMessage))
                {
                    CtrlMessage = String.Empty;
                }
                if (!WMessage.TryGetValue("StrMsgItem", out StrMsgItem))
                {
                    StrMsgItem = String.Empty;
                }

                if (!WMessage.TryGetValue("CssClass", out CtrlMessageCss))
                {
                    Message = String.Empty;
                }

                if (!String.IsNullOrWhiteSpace(PgCtrlMessage))
                {
                    CtrlMessage = PgCtrlMessage;
                }

                if (!String.IsNullOrEmpty(Message) && !String.IsNullOrEmpty(CtrlMessage))
                {

                    ContentPlaceHolder phContainer = (ContentPlaceHolder)pg.Master.FindControl("cphMain");
                    Label labelMessage = (Label)phContainer.FindControl(CtrlMessage);
                    if (labelMessage != null)
                    {

                        CDPWMessages mh = new CDPWMessages();
                        Type _cClass = mh.GetType(); // Type.GetType(cClass);
                        FieldInfo myf = _cClass.GetField(Message);
                        String umessage = myf.GetValue(null).ToString();
                        labelMessage.Visible = true;
                        labelMessage.Text = umessage;

                        if (!String.IsNullOrWhiteSpace(CtrlMessageCss))
                        {
                            labelMessage.CssClass = CtrlMessageCss;
                        }

                    }

                    //ph.Visible = true;
                    //MessageHandler.MsgNotif(pg, true, pg.FindControl(CtrlMessage), Message, true, StrMsgItem);
                    //pg.ClientScript.RegisterStartupScript(pg.GetType(), "mykey", "MsgFadeOut();", true);
                    pg.ClientScript.RegisterStartupScript(pg.GetType(), "mykey", "MsgFadeOutC(" + CtrlMessage + ");", true);
                }
                HttpContext.Current.Session.Remove(SessionObjectID);
            }

        }


        public static void DisplayeMessage(Page pg, String MessageCode, String PgCtrlMessage, String StrMsgItem, String CtrlMessageCss)
        {

            if (!String.IsNullOrEmpty(MessageCode) && !String.IsNullOrEmpty(PgCtrlMessage))
            {

                ContentPlaceHolder phContainer = (ContentPlaceHolder)pg.Master.FindControl("cphMain");
                Label labelMessage = (Label)phContainer.FindControl(PgCtrlMessage);
                if (labelMessage != null)
                {

                    CDPWMessages mh = new CDPWMessages();
                    Type _cClass = mh.GetType(); // Type.GetType(cClass);
                    FieldInfo myf = _cClass.GetField(MessageCode);
                    String umessage = myf.GetValue(null).ToString();
                    labelMessage.Visible = true;
                    labelMessage.Text = umessage;

                    if (!String.IsNullOrWhiteSpace(CtrlMessageCss))
                    {
                        labelMessage.CssClass = CtrlMessageCss;
                    }

                }

                //ph.Visible = true;
                //MessageHandler.MsgNotif(pg, true, pg.FindControl(CtrlMessage), Message, true, StrMsgItem);
                //pg.ClientScript.RegisterStartupScript(pg.GetType(), "mykey", "MsgFadeOut();", true);
                pg.ClientScript.RegisterStartupScript(pg.GetType(), "mykey", "MsgFadeOutC(" + PgCtrlMessage + ");", true);
            }

        }



        //public static void MsgNotif(Page pg, Boolean RunScript, Label ctlMsg, String msgCode, Boolean useR, String strItem = "", Boolean addBR = false, Int16 noBR = 1, Boolean fadeOut = true)
        //{
        //    if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");
        //    //string.Format("Error: {0}<br />Data: {4}<br />Exceptie: {1}<br />Sursa: {2}<br />StackTrace: {3}", ex.Message, ex.InnerException, ex.Source, ex.StackTrace, ex.Data);

        //    String msg = String.Empty;
        //    Boolean bEx = false;

        //    //String sJSScript = "setTimeout(\"$('#lblMessage').fadeOut(2000,'linear')\", 3000);";
        //    String sJSScript = "setTimeout(\"$('#" + ctlMsg.ID + "').fadeOut(2000,'linear')\", 3000);";

        //    if (ctlMsg == null)
        //    {
        //        return;
        //    }

        //    if (useR)
        //    {

        //        if (String.IsNullOrEmpty(msgCode))
        //        {
        //            msgCode = "ERR_MSG_ERROR";
        //        }

        //        if (msgCode.Substring(0, 3).CompareTo("ERR") == 0)
        //        {
        //            bEx = true;
        //        }

        //        if (!String.IsNullOrEmpty(msgCode))
        //        {
        //            MessageHandler mh = new MessageHandler();

        //            Type _cClass = mh.GetType(); // Type.GetType(cClass);
        //            FieldInfo myf = _cClass.GetField(msgCode);

        //            msg = myf.GetValue(null).ToString();
        //        }
        //    }

        //    ctlMsg.Visible = true;
        //    String BR = "<br/>";
        //    if (addBR)
        //    {
        //        msg = BR + msg;
        //    }
        //    if (String.IsNullOrEmpty(strItem))
        //    {
        //        ctlMsg.Text = msg;
        //    }
        //    else
        //    {
        //        ctlMsg.Text = string.Format(msg, strItem);
        //    }

        //    if (bEx)
        //    {
        //        ctlMsg.ForeColor = System.Drawing.Color.FromKnownColor(KnownColor.Red);
        //    }
        //    else
        //    {
        //        ctlMsg.ForeColor = System.Drawing.Color.FromKnownColor(KnownColor.Blue);
        //    }

        //    if (fadeOut && !bEx)
        //    {
        //        //pg.ClientScript.RegisterStartupScript(pg.GetType(), "mykey", "MsgFadeOut();", true);
        //        pg.ClientScript.RegisterStartupScript(pg.GetType(), "mykey", sJSScript, true);
        //    }

        //    if (bEx)
        //    {
        //        //string mailBody = string.Format("Error: {0}<br />Data: {4}<br />Exceptie: {1}<br />Sursa: {2}<br />StackTrace: {3}", ex.Message, ex.InnerException, ex.Source, ex.StackTrace, ex.Data);
        //        string mailBody = string.Format("Error: {0}<br />", msg);

        //        String strEmailTo = ((SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp")).From;
        //        //Mail.Send(strEmailTo, null, null, "IITS Error", mailBody, System.Net.Mail.MailPriority.High);
        //    }

        //    if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
        //}

        //public static void MsgNotif(Page pg, Label ctlMsg, String msgCode, Boolean useR, String strItem = "", Boolean addBR = false, Int16 noBR = 1, Boolean fadeOut = true)
        //{
        //    if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");
        //    //string.Format("Error: {0}<br />Data: {4}<br />Exceptie: {1}<br />Sursa: {2}<br />StackTrace: {3}", ex.Message, ex.InnerException, ex.Source, ex.StackTrace, ex.Data);

        //    String msg = String.Empty;
        //    Boolean bEx = false;

        //    if (ctlMsg == null)
        //    {
        //        return;
        //    }

        //    if (useR)
        //    {

        //        if (String.IsNullOrEmpty(msgCode))
        //        {
        //            msgCode = "ERR_MSG_ERROR";
        //        }

        //        if (msgCode.Substring(0, 3).CompareTo("ERR") == 0)
        //        {
        //            bEx = true;
        //        }

        //        if (!String.IsNullOrEmpty(msgCode))
        //        {
        //            MessageHandler mh = new MessageHandler();

        //            Type _cClass = mh.GetType(); // Type.GetType(cClass);
        //            FieldInfo myf = _cClass.GetField(msgCode);

        //            msg = myf.GetValue(null).ToString();
        //        }
        //    }

        //    ctlMsg.Visible = true;
        //    String BR = "<br/>";
        //    if (addBR)
        //    {
        //        msg = BR + msg;
        //    }
        //    if (String.IsNullOrEmpty(strItem))
        //    {
        //        ctlMsg.Text = msg;
        //    }
        //    else
        //    {
        //        ctlMsg.Text = string.Format(msg, strItem);
        //    }

        //    if (bEx)
        //    {
        //        ctlMsg.ForeColor = System.Drawing.Color.FromKnownColor(KnownColor.Red);
        //    }
        //    else
        //    {
        //        ctlMsg.ForeColor = System.Drawing.Color.FromKnownColor(KnownColor.Blue);
        //    }

        //    if (fadeOut && !bEx)
        //    {
        //        pg.ClientScript.RegisterStartupScript(pg.GetType(), "mykey", "MsgFadeOut();", true);
        //    }

        //    //RadAjaxManager1.ResponseScripts.Add("FadeOut()");
        //    //string strError = string.Format("Mesaj: {0}<br />Data: {4}<br />Exceptie: {1}<br />Sursa: {2}<br />StackTrace: {3}", ex.Message, ex.InnerException, ex.Source, ex.StackTrace, ex.Data);
        //    //string strError = string.Format("There was an error:<br /> {0}", ex.Message);
        //    if (bEx)
        //    {
        //        //string mailBody = string.Format("Error: {0}<br />Data: {4}<br />Exceptie: {1}<br />Sursa: {2}<br />StackTrace: {3}", ex.Message, ex.InnerException, ex.Source, ex.StackTrace, ex.Data);
        //        string mailBody = string.Format("Error: {0}<br />", msg);

        //        String strEmailTo = ((SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp")).From;
        //        //Mail.Send(strEmailTo, null, null, "IITS Error", mailBody, System.Net.Mail.MailPriority.High);
        //    }

        //    if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
        //}

        //function MsgFadeOut()
        //{
        //    setTimeout("$('#lblMessageFU').fadeOut(2000,'linear')", 3000);
        //    //$('#lblMsg').fadeOut(2000);
        //    //$("#lblMsg").fadeOut(1000, "linear", complete);
        //    //$("#lblMsg").fadeOut(1000, "linear");
        //}
    }
}
