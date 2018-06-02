using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace 创建数据库表
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "")    //判断数据库表名称是否为空
            {
                MessageBox.Show("数据库表名称不能为空！", "提示信息", MessageBoxButtons.OK, MessageBoxIcon.None);
            }
            else
            {
                string mydata = textBox1.Text;    //数据库表名称
                string mydb = comboBox1.Text;     //在哪个数据库中创建表
                //创建SqlConnection对象并连接数据库
                SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=" + mydb);
                //动态创建数据库表的SQL代码
                string str = "create table " + mydata + "( 仓库编号 int identity(1,1) primary key,  仓库号 varchar(50) unique, 城市  varchar(50) not null,  面积 int)";
                //创建SqlCommand对象
                SqlCommand myCommand = new SqlCommand(str, myConn);
                try
                {
                    myConn.Open();     //打开连接
                    myCommand.ExecuteNonQuery();    //执行SQL创建数据库代码
                    MessageBox.Show("数据库表创建成功！", "提示信息", MessageBoxButtons.OK, MessageBoxIcon.None);
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

        private void Form1_Load(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Server =(local); Integrated security=SSPI;database=master");
            myConn.Open();          //打开连接
            if (myConn.State == ConnectionState.Open)       //判断当前连接状态
            {
                SqlCommand myComm = new SqlCommand("sp_helpdb", myConn);    //定义SqlCommand对象实例并调用sp_helpdb存储过程
                SqlDataReader myRead = myComm.ExecuteReader();     //创建SqlDataReader对象实例
                while (myRead.Read())    //利用While循环把服务器中的数据库添加到下拉列表框中
                {
                    comboBox1.Items.Add(myRead[0].ToString());
                }
                comboBox1.SelectedIndex = 0;    //选中第一项数据库名
                myRead.Close();                //关闭SqlDataReader对象实
                myComm.Dispose();       //释放SqlCommand对象实例所占内存空间
            }
            else
            {
                myConn.Close();   //如果连接不成功，则关闭SqlConnection对象实例
            }
            myConn.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            Application.Exit();
        }
    }
}
