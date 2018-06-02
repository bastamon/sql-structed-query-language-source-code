using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace 动态查询多表信息
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "")
            {
                MessageBox.Show("查询条件不能为空！", "提示信息", MessageBoxButtons.OK, MessageBoxIcon.None);
            }
            else
            {
                SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=db_business");
                myConn.Open();          //打开连接
                //动态模糊查询 
                string SqlStr = "select 姓名,工资, 工资-(select avg(工资) from 职工) as 与平均工资的差, 金额 from 职工, 订购单 where  职工.职工号 =订购单.职工号 and 姓名 like '%" + textBox1.Text + "%'";
                SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
                DataSet ds = new DataSet();    //定义DataSet对象实例
                ada.Fill(ds);
                //连接数据表格，显示数据  
                this.dataGridView1.DataSource = ds.Tables[0].DefaultView;
            }
        }
    }
}
