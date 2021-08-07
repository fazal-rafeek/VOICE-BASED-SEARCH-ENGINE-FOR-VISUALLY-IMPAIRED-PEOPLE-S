using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using System.Threading;
using System.Speech.Synthesis;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace playvoice
{
    public partial class Form1 : Form
    {

        SpeechSynthesizer sp = new SpeechSynthesizer();


        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\User\Desktop\fazal project\VoiceBased\SearchEngine\App_Data\web.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;


        public Form1()
        {
            InitializeComponent();
        }
        int i;
        string words;

        private void Form1_Load(object sender, EventArgs e)
        {
            string pae = playvoice.Program.ParamHolder.Params[0];
          //MessageBox.Show(pae);

            sp.Rate = -2;

            if (pae == "All")
            {
                con.Open();
                cmd = new SqlCommand(" select * from historyc", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {


                    i += 1;

                    words += "LINK " + i + "..   " + dr["title"].ToString() + ".\n";

                }

                textBox1.Text = words;
                con.Close();

                sp.SpeakAsync(textBox1.Text);
            }

            else
            {

                con.Open();
                cmd = new SqlCommand(" select * from historyc where id =   '" + pae.ToString() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {




                    words += "LINK " + pae + "..   " + GetPlainTextFromHtml(dr["description"].ToString()) + ".\n";

                }

                textBox1.Text = words;
                con.Close();

                sp.SpeakAsync(textBox1.Text);


            }

          
          

        }

        private string GetPlainTextFromHtml(string htmlString)
        {
            string htmlTagPattern = "<.*?>";
            var regexCss = new Regex("(\\<script(.+?)\\</script\\>)|(\\<style(.+?)\\</style\\>)", RegexOptions.Singleline | RegexOptions.IgnoreCase);
            htmlString = regexCss.Replace(htmlString, string.Empty);
            htmlString = Regex.Replace(htmlString, htmlTagPattern, string.Empty);
            htmlString = Regex.Replace(htmlString, @"^\s+$[\r\n]*", "", RegexOptions.Multiline);
            htmlString = htmlString.Replace("&nbsp;", string.Empty);

            return htmlString;
        }
    }
}
