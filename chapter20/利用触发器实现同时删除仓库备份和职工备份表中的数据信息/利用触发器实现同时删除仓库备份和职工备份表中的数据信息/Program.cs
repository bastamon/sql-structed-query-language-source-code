using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace 利用触发器实现同时删除仓库备份和职工备份表中的数据信息
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
