﻿
    using DBUtility;
    using DevExpress.XtraCharts;
    using DevExpress.XtraCharts.Web;
    using System;
    using System.Data;
    using System.Drawing;
    using System.Web.UI;
    using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;

    public partial class  commonth : Page
    {
        private BaseClass bc = new BaseClass();
        public string month = DateTime.Now.ToString("yyyy-MM-dd");
        private ViewType types = ViewType.Bar;


        private void DrawPie()
        {
            string title = DateTime.Parse(this.month).AddMonths(-1).ToString("yyyy年MM月") + "与" + DateTime.Parse(this.month).ToString("yyyy年MM月") + "的人流统计分析图-月图表";
            ChartServices.SetChartTitle(this.WebChartControl1, true, title, StringAlignment.Center, ChartTitleDockStyle.Top, true, new Font("宋体", 12f, FontStyle.Bold), Color.Red, 10);
            ChartServices.DrawChart(this.WebChartControl1, "人数", this.types, this.loadz(), "类型", "人数");
        }

        public DataTable loadz()
        {
            string sql = "select count(distinct case DATEDIFF(month,Addtime,'" + this.month + "') when 0 then Card_Id else null end) as '本月', count(distinct case DATEDIFF(month,Addtime,'" + this.month + "') when 1 then Card_Id else null end) as '上月' from Consumption_Back_select where shopId='" + PublicMethod.GetSessionValue("shopnum").ToString() + "'";
            DataTable dt = this.bc.ReadTable(sql);
            DataTable dtz = new DataTable();
            dtz.Columns.Add("类型", typeof(string));
            dtz.Columns.Add("人数", typeof(decimal));
            dtz.Rows.Add(new object[] { dt.Columns[1].ColumnName, dt.Rows[0][1].ToString() });
            dtz.Rows.Add(new object[] { dt.Columns[0].ColumnName, dt.Rows[0][0].ToString() });
            return dtz;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!base.IsPostBack)
            {
                try
                {
                    this.month = DateTime.Parse(base.Request.QueryString["month"].ToString()).ToString("yyyy-MM-dd");
                    if (base.Server.UrlDecode(base.Request.QueryString["type"].ToString()) == "树状图")
                    {
                        this.types = ViewType.Bar;
                    }
                    else
                    {
                        this.types = ViewType.Pie;
                    }
                }
                catch
                {
                }
                this.DrawPie();
            }
        }
    }


