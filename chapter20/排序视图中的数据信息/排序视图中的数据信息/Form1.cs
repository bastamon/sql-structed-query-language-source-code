using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace 排序视图中的数据信息
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
            string SqlStr = "select *  from 基于视图的视图";                  
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView; //连接数据表格，显示数据
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=db_business");
            myConn.Open();                   //打开连接
            string SqlStr = "select *  from 基于视图的视图 order by 面积 asc";
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView; //连接数据表格，显示数据
        }

        private void button3_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=db_business");
            myConn.Open();                   //打开连接
            string SqlStr = "select *  from 基于视图的视图 order by 面积 desc";
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView; //连接数据表格，显示数据
        }

        private void button4_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=db_business");
            myConn.Open();                   //打开连接
            string SqlStr = "select *  from 基于视图的视图 order by 工资 asc";
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            DataSet ds = new DataSet();    //定义DataSet对象实例
            ada.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0].DefaultView; //连接数据表格，显示数据
        }
    }
}
