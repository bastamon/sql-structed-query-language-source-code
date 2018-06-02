using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string myConnstr = "Server =(local); Integrated security=SSPI; Database = db_business";   //数据库连接字符串
        SqlConnection myConn = new SqlConnection(myConnstr);        //创建SqlConnection对象实例
        try
        {
            myConn.Open();                                        //打开连接
            Label1.Text = "是否连接成功提示信息：连接成功";     //提示信息
            Label2.Text = "连接字符串：" + myConnstr;             //显示SqlConnection对象实例的属性值
            Label3.Text = "数据库名称：" + myConn.Database;
            Label4.Text = "服务器实例名：" + myConn.DataSource;
            Label5.Text = "服务器版本：" + myConn.ServerVersion;
            myConn.Close();
        }
        catch
        {
            Label1.Text = "是否连接成功提示信息：连接不成功！";     //提示信息
            Label2.Text = "连接字符串：连接字符串不正确";
            Label3.Text = "数据库名称：";
            Label4.Text = "服务器实例名：";
            Label5.Text = "服务器版本：";
        }

    }
}
