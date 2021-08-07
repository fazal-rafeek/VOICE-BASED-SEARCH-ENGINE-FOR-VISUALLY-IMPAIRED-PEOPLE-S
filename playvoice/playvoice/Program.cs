using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace playvoice
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            ParamHolder.Params = args;
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }

        public static class ParamHolder
        {
            public static string[] Params { get; set; }
        }

        public class DoSomething
        {
            public string Apple { get; set; }
            public string Orange { get; set; }
            public string Banana { get; set; }
            // other fruits...
        }
    }
}
