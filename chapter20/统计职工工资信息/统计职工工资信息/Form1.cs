using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace 统计职工工资信息
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=db_business");
            myConn.Open();                   //打开连接
            string SqlStr = "select  AVG(工资) as 平均工资,max(工资) as 最大工资, min(工资) as 最小工资, sum(工资) as 工资和 from 职工";                  //聚和查询
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView; //连接数据表格，显示数据
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=db_business");
            myConn.Open();                   //打开连接
            string SqlStr = "select 仓库号, AVG(工资) as 平均工资,max(工资) as 最大工资, min(工资) as 最小工资, sum(工资) as 工资和 from 职工  group by 仓库号";                  //聚和查询
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView; //连接数据表格，显示数据
        }
    }
}
