using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace 创建数据库
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "")    //判断数据库名称是否为空
            {
                MessageBox.Show("数据库名称不能为空！", "提示信息", MessageBoxButtons.OK, MessageBoxIcon.None);
            }
            else
            {
                string mydata = textBox1.Text;    //数据库名称
                //创建SqlConnection对象并连接数据库
                SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=master");
                //动态创建数据库的SQL代码
                string str = "CREATE DATABASE " + mydata + " ON PRIMARY " +
                      "(NAME = MyDatabase_Data, " +
                      "FILENAME = 'e:\\mydata\\MyDatabaseData.mdf', " +
                      "SIZE = 5MB, MAXSIZE = 10MB, FILEGROWTH = 10%) " +
                      "LOG ON (NAME = MyDatabase_Log, " +
                      "FILENAME = 'e:\\mydata\\MyDatabaseLog.ldf', " +
                      "SIZE = 1MB, " +
                      "MAXSIZE = 2MB, " +
                      "FILEGROWTH = 10%)";
                //创建SqlCommand对象
                SqlCommand myCommand = new SqlCommand(str, myConn);
                try
                {
                    myConn.Open();     //打开连接
                    myCommand.ExecuteNonQuery();    //执行SQL创建数据库代码
                    MessageBox.Show("数据库创建成功！", "提示信息", MessageBoxButtons.OK, MessageBoxIcon.None);
                }
                catch (Exception Err)
                {
                    MessageBox.Show(Err.Message, "错误提示", MessageBoxButtons.OK,
MessageBoxIcon.Warning);
                }
                finally
                {
                    if (myConn.State == ConnectionState.Open)
                    {
                        myConn.Close();
                    }
                }
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            Application.Exit();
        }
    }
}
