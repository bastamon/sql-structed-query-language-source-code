using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient; 
namespace 删除数据记录
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        string pstr;                   //定义字符串型变量
        DataTable mytable;            //创建DataTable对象实例
        SqlConnection myConn;         //创建SqlConnection对象实例

        private void Form1_Load(object sender, EventArgs e)
        {
            myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=SQL数据库");
             
            string SqlStr = "select * from 仓库表";      //select查询
            SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
            mytable = new DataTable();
            ada.Fill(mytable);
            this.dataGridView1.DataSource = mytable.DefaultView;             //连接数据表格，显示数据  
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("确定要删除本条记录吗！", "提示信息", MessageBoxButtons.YesNo, MessageBoxIcon.Information) == DialogResult.Yes)
            {
                myConn.Open();             //调用Open方法成功连接数据库  
                //Delete删除语句          
                string mydelete = "delete from 仓库表  where 仓库编号 = " + int.Parse(pstr);
                SqlCommand cmd = new SqlCommand(mydelete, myConn);        //定义SqlCommand对象并连接数据库
                cmd.ExecuteNonQuery();             //执行删除语句  
                string SqlStr = "select * from 仓库表";
                SqlDataAdapter ada = new SqlDataAdapter(SqlStr, myConn);
                mytable = new DataTable();
                ada.Fill(mytable);
                //连接数据表格，显示数据  
                this.dataGridView1.DataSource = mytable.DefaultView;
                myConn.Close();               //关闭SqlConnection对象实例   
                //提示对话框    
                MessageBox.Show("已成功删除当前选择数据信息！", "提示信息", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            Application.Exit();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            pstr = mytable.Rows[e.RowIndex][0].ToString();    //为变量pstr赋值 
        }
    }
}
