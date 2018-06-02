using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient; 
namespace 插入数据记录
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=SQL数据库");
            myConn.Open();          //打开连接
            string SqlStr = "select 仓库号,城市,面积 from 仓库表";  //动态查询 
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            //连接数据表格，显示数据  
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView;

        }
    }
}
