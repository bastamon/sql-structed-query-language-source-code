using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ConStr = "Server =(local); Integrated security=SSPI; Database = db_business";
        SqlConnection con = new SqlConnection(ConStr);
        string SqlStr = "select 职工.*, dbo.Myfun(工资) as 工资评语 from 职工";
        SqlDataAdapter ada = new SqlDataAdapter(SqlStr, con);
        con.Open();
        DataSet ds = new DataSet();
        ada.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }
}
