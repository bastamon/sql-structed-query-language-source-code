using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace 调用存储过程显示视图中的数据信息
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=db_business");
            myConn.Open();                   //打开连接
            SqlDataAdapter ada = new SqlDataAdapter("proc_getview", myConn);   //定义SqlDataAdapter对象实例，从而调用存储过程
            ada.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView; //连接数据表格，显示数据

        }
    }
}
