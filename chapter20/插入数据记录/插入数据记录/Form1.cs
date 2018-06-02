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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" || textBox2.Text == "" || textBox3.Text == "" )
            {
                MessageBox.Show("插入的数据信息不完整！", "提示信息", MessageBoxButtons.OK, MessageBoxIcon.None);             //提示对话框
            }
            else
            {
                SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=SQL数据库");
                myConn.Open();          //打开连接
                StringBuilder strSQL = new StringBuilder();
                //利用Insert插放语句向数据库表中插入记录
                strSQL.Append("insert into 仓库表(仓库号, 城市,面积)");
                strSQL.Append(" values('" + textBox1.Text.Trim().ToString() + "','" + textBox2.Text.Trim().ToString() + "',");
                strSQL.Append("" + int.Parse(textBox3.Text.Trim()) + ")");
                using (SqlCommand cmd = new SqlCommand(strSQL.ToString(), myConn))
                {
                    cmd.ExecuteNonQuery();      //执行Insert插入语句
                    myConn.Close();           //关闭对象并释放所占内存空间
                    myConn.Dispose();
                }
                MessageBox.Show("已成功向数据库表中插入一条记录！", "信息提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                textBox1.Text = "";           //文本框全清空
                textBox2.Text = "";
                textBox3.Text = "";
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form2 myform = new Form2();    //创建Form2窗体实例
            myform.ShowDialog();      //打开窗体
        }
    }
}
