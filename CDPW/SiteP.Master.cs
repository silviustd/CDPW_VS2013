using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDPW.BLL;

namespace CDPW
{
    public partial class SiteP : System.Web.UI.MasterPage
    {

        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");

            string url = Request.RawUrl.ToString();



            if (HttpContext.Current.Session != null && HttpContext.Current.Session["cdpUser"] != null)
            {
                CurrentUser cU = (CurrentUser)HttpContext.Current.Session["cdpUser"];

            }

            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
        }


        public void hlPrint_Click(Object sender, EventArgs e)
        {
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");

            string url = Request.RawUrl.ToString();
            try
            {

                if (HttpContext.Current.Session != null && HttpContext.Current.Session["cdpUser"] != null)
                {
                    CurrentUser uLogin = (CurrentUser)HttpContext.Current.Session["cdpUser"];

                    if (url.IndexOf("DCANForm.aspx") > 0)
                    {
                        if (uLogin.SavedDCAN)
                            Response.Redirect("cdpprintpreview.aspx?Report=CANForm");
                        else
                        {
                            Response.Redirect("DCANForm.aspx?saved=false");
                        }
                    }
                    else if (url.IndexOf("DUSAForm.aspx") > 0)
                    {
                        //if (uLogin.SavedDUSA)
                        //    Response.Redirect("cdpprintpreview.aspx?Report=USAForm");
                        //else
                        //{
                        //    Response.Redirect("DUSAForm.aspx?saved=false");
                        //}
                    }
                }

            }
            catch (Exception ex) {
                if (log.IsErrorEnabled) log.Error(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Error", ex);
            }

            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");

        }

        public void hlSave_Click(Object sender, EventArgs e)
        {
        }

        public void hlLogout_Click(Object sender, EventArgs e)
        {
        }

    
    }
}