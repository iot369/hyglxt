﻿
    using DBUtility;
    using System;
    using System.Data;
    using System.Web.UI;
    using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;

    public partial class  yanqi : Page
    {
        private BaseClass bc = new BaseClass();

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string sqladd = "update  membersinfo set mPastdate='" + this.txtpastdate.Value + "' where mNum ='" + base.Request.QueryString["mnum"].ToString() + "'";
                this.bc.execsql(sqladd);
                this.loadmem();
            }
            catch
            {
            }
        }

        public void loadmem()
        {
            string sql = "select * from membersinfo where mNum = '" + base.Request.QueryString["mnum"].ToString() + "'";
            DataTable dt = this.bc.ReadTable(sql);
            if (dt.Rows.Count > 0)
            {
                this.txtnum.Value = dt.Rows[0]["mNum"].ToString();
                this.txtpastdate.Value = dt.Rows[0]["mPastdate"].ToString();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!base.IsPostBack)
            {
                this.loadmem();
            }
        }
    }


