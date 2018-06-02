using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace 调用存储过程显示视图中的数据信息
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}
