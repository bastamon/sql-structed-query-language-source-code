using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;  
namespace 更新数据记录
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        static int Num = 0;    //记录当前数据的位置
        int Count = 0;        //记录数据表中的记录个数
        string mystr;          //记录当前数据的仓库ID信息
        //定义SqlConnection对象并连接数据库
        SqlConnection con = new SqlConnection("Server =(local); Integrated security=SSPI;database=SQL数据库");

        private DataSet DtReslut(int i)
        {
            using (SqlDataAdapter da = new SqlDataAdapter())
            {
                da.SelectCommand = new SqlCommand("select * from 仓库表", con);
                DataSet ds = new DataSet();
                da.Fill(ds, i, i + 1, "仓库表");
                return ds;
            }
        }

        private void Resultinfo(int j)
        {
            DataSet dsNew = DtReslut(j);      //定义DataSet对象实例
            mystr = dsNew.Tables[0].Rows[0][0].ToString();
                                            //提取数据记表中的记录分别赋值于文本框
            this.textBox1.Text = dsNew.Tables[0].Rows[0][1].ToString();
            this.textBox2.Text = dsNew.Tables[0].Rows[0][2].ToString();
            this.textBox3.Text = dsNew.Tables[0].Rows[0][3].ToString();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Resultinfo(Num);     //调用自定义函数Resultinfo 
            //利用Select语句查询数据库表中记录的个数
            using (SqlCommand cmd = new SqlCommand("select Count(*) from 仓库表", con))
            {
                con.Open();
                Count = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Num = 0;
            Resultinfo(Num);       //调用Resultinfo方法
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Num += 1;            //变量Num的值加1 
            if (Num < Count)
            {
                Resultinfo(Num);   //调用自定义函数Resultinfo
            }
            else
            {
                MessageBox.Show("现已是最后一条记录!");
                Num = Count - 1;
                return;
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Num -= 1;            //变量Num的值减1
            if (Num >= 0)
            {
                Resultinfo(Num);    //调用自定义函数Resultinfo
            }
            else
            {
                MessageBox.Show("现已是第一条记录!");   //提示对话框
                Num = 0;
                return; ;
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Num = Count;
            Resultinfo(Num - 1);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            con.Open();          //打开连接
            StringBuilder strSQL = new StringBuilder();
            strSQL.Append("update 仓库表 ");
            strSQL.Append(" set 仓库号 = '" + textBox1.Text.Trim().ToString() + "',");
            strSQL.Append(" 城市 = '" + textBox2.Text.Trim().ToString() + "',");
            strSQL.Append(" 面积 = " + int.Parse(textBox3.Text.Trim()) + " ");
            strSQL.Append(" where  仓库编号 = " + mystr + " ");
            using (SqlCommand cmd = new SqlCommand(strSQL.ToString(), con))
            {
                cmd.ExecuteNonQuery();      //执行update更新语句
                con.Close();           //关闭对象并释放所占内存空间
            }
            MessageBox.Show("已成功修改一条记录！", "信息提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Form2 myform = new Form2();   //创建Form2窗体实例
            myform.ShowDialog();         //显示窗体
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Close();
            Application.Exit();
        }
    }
}
