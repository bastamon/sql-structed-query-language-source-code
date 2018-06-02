using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=86673508zf;Initial Catalog=db_business;Integrated Security=True";
        DataClassesDataContext db = new DataClassesDataContext(connectionString);
        var result = from r in db.职工
                     where r.工资 >= Convert.ToInt32(TextBox1.Text) && r.工资 <= Convert.ToInt32(TextBox2.Text)
                     select r;
        GridView1.DataSource = result;
        GridView1.DataBind();

    }
}
