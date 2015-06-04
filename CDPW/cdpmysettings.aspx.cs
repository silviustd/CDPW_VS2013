﻿using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using CDPW.DAL;
using CDPW.BLL;

namespace CDPW
{
    public partial class cdpmysettings : System.Web.UI.Page
    {
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        //renounce it 
        Hashtable TablesRCount = new Hashtable();

        //CurrentUser uLogin = (CurrentUser)HttpContext.Current.Session["cdpUser"];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");
            if (HttpContext.Current.Session != null && HttpContext.Current.Session["cdpUser"] != null)
            {
                if (!Page.IsPostBack)
                {

                    CurrentUser uLogin = new CurrentUser();
                    MSettings CUSettings = new MSettings();

                    /*
                    //for test purposes
                    CurrentUser uLogin1 = new CurrentUser();
                


                    //CurrentUser uLogin1 = (CurrentUser)HttpContext.Current.Session["cdpUser"];


                    uLogin1.WAppUserId = 1;
                    uLogin1.WAppUserName = "user1";
                    uLogin1.WAppUserPwd = "user1";
                    uLogin1.WAppUserEmail = "user1"; ;
                    uLogin1.NoSignUp = false;

                    uLogin1.ActiveEnrollments = new List<UserActiveEnrollments>();

                    UserActiveEnrollments uAE = new UserActiveEnrollments();
                    uAE.PLicenseType = "USCBP";
                    uAE.EnrollmentBeginDate = new DateTime(2012, 01, 01);
                    uLogin1.ActiveEnrollments.Add(uAE);

                    uAE = new UserActiveEnrollments();
                    uAE.PLicenseType = "CBSA";
                    uAE.EnrollmentBeginDate = new DateTime(2012, 01, 01);
                    uLogin1.ActiveEnrollments.Add(uAE);

                    HttpContext.Current.Session.Add("cdpUser", uLogin1);
                    //for test purposes
                    */

                    uLogin = (CurrentUser)HttpContext.Current.Session["cdpUser"];

                    Int64 UserID = -1;
                    UserID = uLogin.WAppUserId;
                    Int32 CountryId = 0;
                    System.Data.DataSet ds = new System.Data.DataSet();
                    ds = this.Form_Get(UserID);

                    TablesRCount.Add("WAppUsers", 1);
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        txtUName.Text = string.Format("{0}", dr["WAppUserName"].ToString());
                        txtPwd.Text = string.Format("{0}", dr["WAppUserPwd"].ToString());
                        txtEmail.Text = string.Format("{0}", dr["WAppUserEmail"].ToString());
                        txtAEmail.Text = string.Format("{0}", dr["WAppUserAltEmail"].ToString());
                        chkNotKeepData.Checked = (Boolean)dr["NotKeepData"];
                    }

                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        // persons
                        TablesRCount.Add("Persons", 1);
                        foreach (DataRow dr in ds.Tables[1].Rows)
                        {
                            //Salutation
                            ddlSal.SelectedValue = string.Format("{0}", dr["Salutation"].ToString());
                            txtFName.Text = string.Format("{0}", dr["FirstName"].ToString());
                            txtMName.Text = string.Format("{0}", dr["MiddleName"].ToString());
                            txtLName.Text = string.Format("{0}", dr["LastName"].ToString());
                            rblGender.SelectedValue = dr["GenderId"].ToString();
                            txtDOB.Text = TextUtils.ReturnFromDB(dr["DateofBirth"].ToString(), true);

                            CUSettings.Sal = ddlSal.SelectedValue;
                            CUSettings.Gender = rblGender.SelectedValue;
                            CUSettings.DoB = txtDOB.Text;
                        }
                    }
                    else
                    {
                        TablesRCount.Add("Persons", 0);
                    }


                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        // persons
                        TablesRCount.Add("Addresses", 1);
                        foreach (DataRow dr in ds.Tables[2].Rows)
                        {
                            txtStrNo.Text = String.IsNullOrEmpty(dr["StreetNumber"].ToString()) ? String.Empty  : ((Int16)dr["StreetNumber"] > 0 ? ((Int16)dr["StreetNumber"]).ToString() : String.Empty );
                            txtStrType.Text = string.Format("{0}", dr["StreetType"].ToString());
                            txtUNo.Text = string.Format("{0}", dr["UnitNumber"].ToString());
                            //txtStrName.Text = string.Format("{0}", dr["StreetName"].ToString());
                            txtStrName.Text = string.Format("{0}", dr["StreetNom"].ToString());
                            txtStrDir.Text = string.Format("{0}", dr["StreetPostDirection"].ToString());

                            CountryId = String.IsNullOrEmpty(dr["CountryId"].ToString()) ? 0 : (Int16)dr["CountryId"];

                            Helpers.Lists(ddlProv, dr["AdministrativeRegionId"].ToString(), Lists.Regions(CountryId), "AdministrativeRegion", "AdministrativeRegionId");
                            Helpers.Lists(ddlCountry, dr["CountryId"].ToString(), Lists.Countries(), "CountryName", "CountryId");

                            CUSettings.AddressId = String.IsNullOrEmpty(dr["AddressId"].ToString()) ? 0 : Int64.Parse(dr["AddressId"].ToString());
                            CUSettings.StreetNo = String.IsNullOrEmpty(dr["StreetNumber"].ToString()) ? 0 : (Int16)dr["StreetNumber"] ; //((Int16)dr["StreetNumber"] > 0 ? (Int16)dr["StreetNumber"] : '');
                            CUSettings.StreetName = txtStrName.Text;
                            CUSettings.StreetPDirection = txtStrDir.Text;
                            CUSettings.CounryId = String.IsNullOrEmpty(dr["CountryId"].ToString()) ? 0 : Int16.Parse(dr["CountryId"].ToString());

                            CUSettings.AdminRegId = String.IsNullOrEmpty(dr["AdministrativeRegionId"].ToString()) ? 0 : (Int32)dr["AdministrativeRegionId"];
                            CUSettings.UnitNumber = txtUNo.Text;

                        }
                    }
                    else
                    {
                        Helpers.Lists(ddlProv, string.Empty, Lists.Regions(1), "AdministrativeRegion", "AdministrativeRegionId");
                        Helpers.Lists(ddlCountry, null, Lists.Countries(), "CountryName", "CountryId");

                        CUSettings.AddressId = 0;
                        TablesRCount.Add("Addresses", 0);
                    }

                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        TablesRCount.Add("PostalCodes", 1);

                        foreach (DataRow dr in ds.Tables[3].Rows)
                        {
                            txtPCode.Text = string.Format("{0}", dr["PostalCode"].ToString());
                            CUSettings.PCode = txtPCode.Text;
                        }
                    }
                    else
                    {
                        TablesRCount.Add("PostalCodes", 0);
                    }

                    if (ds.Tables[4].Rows.Count > 0)
                    {
                        TablesRCount.Add("Cities", 1);
                        foreach (DataRow dr in ds.Tables[4].Rows)
                        {
                            txtCity.Text = string.Format("{0}", dr["City"].ToString());
                            CUSettings.City = txtCity.Text;
                        }
                    }
                    else
                    {
                        TablesRCount.Add("Cities", 0);
                    }

                    HttpContext.Current.Session.Add("cuSettings", CUSettings);

                    /*
                    if (ds.Tables[5].Rows.Count > 0)
                    {
                        foreach (DataRow dr in ds.Tables[5].Rows)
                        {
                            Helpers.Lists(ddlProv, dr["AdministrativeRegionId"].ToString(), Lists.Regions(int.Parse(dr["CountryId"].ToString())), "AdministrativeRegion", "AdministrativeRegionCode");
                        }
                    }
                    else {
                        Helpers.Lists(ddlProv, string.Empty, Lists.Regions(1), "AdministrativeRegion", "AdministrativeRegionCode");
                    }

                    if (ds.Tables[6].Rows.Count > 0)
                    {
                        foreach (DataRow dr in ds.Tables[6].Rows)
                        {
                            Helpers.Lists(ddlCountry, dr["CountryId"].ToString(), Lists.Countries(), "CountryName", "CountryId");
                        }
                    }
                    else
                    {
                        Helpers.Lists(ddlCountry, null, Lists.Countries(), "CountryName", "CountryId");
                    }
                    */



                    foreach (Control cc in phSettings.Controls)
                    {
                        if (cc is TextBox)
                        {
                            if (cc.ID.Equals("txtPwd"))
                            {
                                ((TextBox)cc).Enabled = false;
                                ((TextBox)cc).CssClass = "text-1-disable";
                            }
                        }
                    }

                }
            }
            else
            {
                // user is not logged
                Response.Redirect("cdplogin.aspx");
            }
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
        }

        #region "---   FORM - SHOW INFO ---"

        /// <summary>
        /// Get info from DB and fill the form.
        /// </summary>
        /// <param name="WAppUserId">Web app user id.</param>
        /// 

        private DataSet Form_Get(Int64 WAppUserId)
        {
            DataSet dsMSettings;

            using (SqlConnection dbConnection = new SqlConnection(DBConnection.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("MSettings_Get", dbConnection);
                cmd.CommandType = CommandType.StoredProcedure;

                // Add parameters to SPROC
                cmd.Parameters.Add("@WAppUId", SqlDbType.BigInt).Value = WAppUserId;

                dbConnection.Open();

                SqlDataAdapter daMSettings = new SqlDataAdapter(cmd);
                dsMSettings = new DataSet();
                daMSettings.Fill(dsMSettings);

                daMSettings.Dispose();
                cmd.Dispose();
            }

            return dsMSettings;
        }

        #endregion

        protected void btnCancel2_Click(object sender, EventArgs e)
        {
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");
            MSettings CUSettings = (MSettings)HttpContext.Current.Session["cuSettings"];
            CurrentUser uLogin = (CurrentUser)HttpContext.Current.Session["cdpUser"];

            //Messaage
            try
            {
                if (HttpContext.Current.Session != null && HttpContext.Current.Session["cdpUser"] != null)
                {
                    txtUName.Text = uLogin.WAppUserName;
                    txtPwd.Text = uLogin.WAppUserPwd;
                    txtEmail.Text = uLogin.WAppUserEmail;
                    txtAEmail.Text = uLogin.WAppUserAEmail;
                    chkNotKeepData.Checked = uLogin.NotKeepData;

                    ddlSal.SelectedValue = CUSettings.Sal;
                    rblGender.SelectedValue = CUSettings.Gender;
                    txtFName.Text = uLogin.WPFirstName;
                    txtMName.Text = uLogin.WPMiddleName;
                    txtLName.Text = uLogin.WPLastName;

                    txtStrNo.Text  = String.IsNullOrEmpty(CUSettings.StreetNo.ToString()) ? String.Empty : (CUSettings.StreetNo > 0 ? (CUSettings.StreetNo).ToString() : String.Empty);//CUSettings.StreetNo.ToString();
                    txtStrType.Text = CUSettings.StreetType;
                    txtStrName.Text = CUSettings.StreetName;
                    txtStrDir.Text = CUSettings.StreetPDirection;
                    txtUNo.Text = CUSettings.UnitNumber;
                    txtCity.Text = CUSettings.City;

                    ddlCountry.SelectedValue = CUSettings.CounryId.ToString();
                    ddlProv.SelectedValue = CUSettings.AdminRegId.ToString();
                    txtPCode.Text = CUSettings.PCode;
                    txtDOB.Text = CUSettings.DoB;   


                }
                else
                {
                    Response.Redirect("cdplogin.aspx");
                }
            }
            catch (Exception ex)
            {
                components.Error_Show.Show(phError, true, ltrError, ex, null, false);
                if (log.IsErrorEnabled) log.Error(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Error", ex);
            }
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
        }

        protected void btnSaveForm_Click(object sender, EventArgs e)
        {
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");
            try
            {
                if (HttpContext.Current.Session != null && HttpContext.Current.Session["cdpUser"] != null)
                {

                    Boolean resSave = false;

                    resSave = MSettings_Update(txtUName.Text, txtPwd.Text, txtEmail.Text, txtAEmail.Text, chkNotKeepData.Checked, chkUpdInfoCF.Checked, chkUpdAddressCF.Checked
                                                , ddlSal.SelectedValue, txtFName.Text, txtMName.Text, txtLName.Text, txtDOB.Text, rblGender.SelectedValue, txtUNo.Text
                                                , txtStrNo.Text, txtStrType.Text, txtStrDir.Text, txtStrName.Text, txtCity.Text, txtPCode.Text, ddlCountry.SelectedValue, ddlProv.SelectedValue
                                             );

                }
                else
                {
                    Response.Redirect("cdplogin.aspx");
                }
            }
            catch (Exception ex)
            {
                components.Error_Show.Show(phError, true, ltrError, ex, null, false);
                if (log.IsErrorEnabled) log.Error(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Error", ex);
            }
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
        }


        private Boolean MSettings_Update(String txtUName, String txtPwd, String txtEmail, String txtAEmail, Boolean chkNotKeepData, Boolean chkUpdInfoCF, Boolean chkUpdAddressCF, String ddlSal_SelectedValue, String txtFName, String txtMName, String txtLName, String txtDOB, String rblGender_SelectedValue, String txtUNo, String txtStrNo, String txtStrType, String txtStrDir, String txtStrName, String txtCity, String txtPCode, String ddlCountry_SelectedValue, String ddlProv_SelectedValue)
        {
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");

            Boolean retCode = false;
            String AddressToDb = String.Empty;


            SqlTransaction tran = null;

            try
            {
                if (HttpContext.Current.Session != null && HttpContext.Current.Session["cdpUser"] != null)
                {
                    CurrentUser uLogin = (CurrentUser)HttpContext.Current.Session["cdpUser"];

                    if (uLogin is CurrentUser)
                    {
                        //using (System.Transactions.TransactionScope tran = new System.Transactions.TransactionScope())
                        SqlConnection dbConnection = new SqlConnection(DBConnection.ConnectionString);

                        dbConnection.Open();

                        tran = dbConnection.BeginTransaction();

                        MSettings CUSettings = (MSettings)HttpContext.Current.Session["cuSettings"];

                        Int64 UserID = uLogin.WAppUserId;

                        SqlCommand cmd = new SqlCommand("MSettings_Update", dbConnection);
                        cmd.CommandType = CommandType.StoredProcedure;

                        // Add parameters to SPROC
                        cmd.Parameters.Add("@WAppUId", SqlDbType.BigInt).Value = UserID;
                        cmd.Parameters.Add("@PersonId", SqlDbType.BigInt).Value = uLogin.WPersonId;
                        cmd.Parameters.Add("@UserName", SqlDbType.NVarChar, 50).Value = txtUName;
                        cmd.Parameters.Add("@UserPasswd", SqlDbType.NVarChar, 50).Value = txtPwd;
                        cmd.Parameters.Add("@UserEmail", SqlDbType.NVarChar, 150).Value = txtEmail;
                        cmd.Parameters.Add("@UserAltEmail", SqlDbType.NVarChar, 150).Value = txtAEmail;
                        cmd.Parameters.Add("@NotKeepData", SqlDbType.Bit).Value = chkNotKeepData;
                        cmd.Parameters.Add("@UpdInfoCF", SqlDbType.Bit).Value = chkUpdInfoCF;
                        cmd.Parameters.Add("@UpdAddressCF", SqlDbType.Bit).Value = chkUpdAddressCF;
                        cmd.Parameters.Add("@Sal", SqlDbType.NVarChar, 6).Value = ddlSal_SelectedValue;
                        cmd.Parameters.Add("@FirstName", SqlDbType.NVarChar, 50).Value = txtFName;
                        cmd.Parameters.Add("@MiddleName", SqlDbType.NVarChar, 50).Value = txtMName;
                        cmd.Parameters.Add("@LastName", SqlDbType.NVarChar, 50).Value = txtLName;
                        cmd.Parameters.Add("@DoB", SqlDbType.Date, 50).Value = TextUtils.ReturnToDB(txtDOB, true);
                        cmd.Parameters.Add("@Gender", SqlDbType.TinyInt).Value = TextUtils.ReturnIntToDB(rblGender_SelectedValue);

                        cmd.Parameters.Add("@AddressId", SqlDbType.BigInt).Value = CUSettings.AddressId;
                        //
                        cmd.Parameters.Add("@UnitNo", SqlDbType.NVarChar, 5).Value = txtUNo;
                        cmd.Parameters.Add("@StreetNo", SqlDbType.SmallInt).Value = String.IsNullOrEmpty(txtStrNo) ? 0 : Int16.Parse(txtStrNo);
                        cmd.Parameters.Add("@StreetType", SqlDbType.NVarChar, 15).Value = txtStrType;
                        cmd.Parameters.Add("@StreetPDir", SqlDbType.NVarChar, 4).Value = txtStrDir;
                        //concat
                        AddressToDb = String.Empty;
                        if (!String.IsNullOrWhiteSpace(txtStrNo))
                        {
                            AddressToDb += txtStrNo;
                        }

                        if (!String.IsNullOrWhiteSpace(txtStrName))
                        {
                            if (!String.IsNullOrWhiteSpace(AddressToDb))
                            {
                                AddressToDb += ' ' + txtStrName;
                            }
                            else
                            {
                                AddressToDb += txtStrName;
                            }
                        }

                        if (!String.IsNullOrWhiteSpace(txtStrType))
                        {
                            if (!String.IsNullOrWhiteSpace(AddressToDb))
                            {
                                AddressToDb += ' ' + txtStrType;
                            }
                            else
                            {
                                AddressToDb += txtStrType;
                            }
                        }
                        if (!String.IsNullOrWhiteSpace(txtStrDir))
                        {
                            if (!String.IsNullOrWhiteSpace(AddressToDb))
                            {
                                AddressToDb += ' ' + txtStrDir;
                            }
                            else
                            {
                                AddressToDb += txtStrDir;
                            }
                        }
                        if (!String.IsNullOrWhiteSpace(txtUNo))
                        {
                            if (!String.IsNullOrWhiteSpace(AddressToDb))
                            {
                                AddressToDb += ",Apt " + txtUNo;
                            }
                            else
                            {
                                AddressToDb += txtUNo;
                            }
                        }

                        cmd.Parameters.Add("@StreetName", SqlDbType.NVarChar, 200).Value = AddressToDb;
                        cmd.Parameters.Add("@StreetNom", SqlDbType.NVarChar, 100).Value = txtStrName;
                        cmd.Parameters.Add("@City", SqlDbType.NVarChar, 50).Value = txtCity;
                        cmd.Parameters.Add("@PCode", SqlDbType.NVarChar, 10).Value = txtPCode;
                        cmd.Parameters.Add("@CountryId", SqlDbType.SmallInt).Value = String.IsNullOrEmpty(ddlCountry_SelectedValue) ? 0 : Int16.Parse(ddlCountry_SelectedValue);
                        cmd.Parameters.Add("@AdminRegId", SqlDbType.Int).Value = String.IsNullOrEmpty(ddlProv_SelectedValue) ? 0 : Int16.Parse(ddlProv_SelectedValue); ;

                        SqlParameter rAddrId = cmd.Parameters.Add("@RAddresId", SqlDbType.BigInt);
                        rAddrId.Direction = ParameterDirection.Output;

                        cmd.Transaction = tran;
                        cmd.ExecuteNonQuery();

                        //update the object
                        uLogin.WAppUserName = txtUName;
                        uLogin.WAppUserPwd = txtPwd;
                        uLogin.WAppUserEmail = txtEmail;
                        uLogin.WAppUserAEmail = txtAEmail;
                        uLogin.NotKeepData = chkNotKeepData;

                        CUSettings.Sal = ddlSal_SelectedValue;
                        CUSettings.Gender = rblGender_SelectedValue.ToString();
                        CUSettings.AddressId = String.IsNullOrEmpty(rAddrId.Value.ToString()) ? 0 : Int64.Parse(rAddrId.Value.ToString());
                        CUSettings.StreetNo = String.IsNullOrEmpty(txtStrNo) ? 0 : Int16.Parse(txtStrNo);
                        CUSettings.StreetName = txtStrNo + ',' + txtStrName + ' ' + txtStrType + ' ' + txtStrDir + ',' + txtUNo;
                        CUSettings.StreetType = txtStrType;
                        CUSettings.StreetPDirection = txtStrDir;
                        CUSettings.UnitNumber = txtUNo;
                        CUSettings.City = txtCity;
                        CUSettings.PCode = txtPCode;
                        CUSettings.CounryId = Int16.Parse(ddlCountry_SelectedValue);
                        CUSettings.AdminRegId = Int32.Parse(ddlProv_SelectedValue);

                        tran.Commit();

                        //TODO Test
                        HttpContext.Current.Session.Add("cuSettings", CUSettings);

                    }

                    retCode = true;
                }
                else
                {
                    Response.Redirect("cdplogin.aspx");
                }

            }
            catch (Exception ex)
            {
                components.Error_Show.Show(phError, true, ltrError, ex, phCanFormSuccess, false);
                if (tran != null)
                {
                    tran.Rollback();
                    tran.Dispose();
                }
                if (log.IsErrorEnabled) log.Error(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Error", ex);
            }

            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
            return retCode;

        }


        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Enter");
            try
            {
                ddlProv.Items.Clear();
                Helpers.Lists(ddlProv, null, Lists.Regions(int.Parse(ddlCountry.SelectedValue)), "AdministrativeRegion", "AdministrativeRegionId");
            }
            catch (Exception ex)
            {
                components.Error_Show.Show(phError, true, ltrError, ex, null, false);
                if (log.IsErrorEnabled) log.Error(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Error", ex);
            }
            if (log.IsInfoEnabled) log.Info(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name + "-" + System.Reflection.MethodBase.GetCurrentMethod().Name + " - Exit");
        }
    }
}