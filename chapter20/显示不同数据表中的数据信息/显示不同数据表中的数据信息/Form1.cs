using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace 显示不同数据表中的数据信息
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            comboBox1.Items.Add("仓库");
            comboBox1.Items.Add("职工");
            comboBox1.Items.Add("订购单");
            comboBox1.Items.Add("供应商");
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=db_business");
            myConn.Open();          //打开连接
            string SqlStr = "select * from " + comboBox1.Text;    //select查询
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView;  //连接数据表格，显示数据  

        }
    }
}
