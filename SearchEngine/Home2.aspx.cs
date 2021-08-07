using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Data.SqlClient;

using System.Web.Services;
using System.Net;
using System.IO;
using System.Speech;
using SpeechLib;
using System.Diagnostics;
using System.Web.UI.HtmlControls;
//using Google.API ;


public partial class Home2 : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\web.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    string cc;


    string words;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        speech = new SpVoice();
        i = 1;
       // Label3.Text = Session["pass"].ToString();

        if (Session["pass"] == "" || Session["pass"] == null)
        {

        }

        else if ("1" == Session["pass"].ToString())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("2" == Session["pass"].ToString())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("3" == Session["pass"].ToString())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("4" == Session["pass"].ToString())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("5" == Session["pass"].ToString ())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("6" == Session["pass"].ToString())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("7" == Session["pass"].ToString ())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("8" == Session["pass"].ToString())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("9" == Session["pass"].ToString())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }
        else if ("10" == Session["pass"].ToString())
        {
            cmd = new SqlCommand("select * from historyc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;
        }

        else if ("Stop" == Session["pass"].ToString())
        {
            foreach (Process p in Process.GetProcesses())
            {

                if (p.ProcessName == "playvoice")
                {

                    p.Kill();

                }


            }



           
        




        }
        else 
        {

            cmd = new SqlCommand("select * from historyc ORDER BY id ASC ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            words = string.Empty;


            foreach (Process p in Process.GetProcesses())
            {

                if (p.ProcessName == "playvoice")
                {

                    p.Kill();

                }


            }


            System.Diagnostics.Process.Start(@"C:\Users\User\Desktop\fazal project\VoiceBased\playvoice\playvoice\bin\Debug\playvoice", "All");



        }

     
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // do something
    } 

    int i;

    static SpVoice speech;
    static int speechRate = -1; // Ranges from -10 to 10 
    static int volume = 100; // Range from 0 to 100.
    static bool pause = false;
    [WebMethod]
    public static bool ExitSpeakOnCloseWindow()
    {
        speech = null;
        return true;

    }
    [WebMethod]//stop the speak
    public static bool StopSpeak()
    {

        speech.Pause();
        pause = true;
        return true;

    }
    
    [WebMethod]//start the speak
    public static bool StartSpeak(string speakstr)
    {
        
        
        speech.Rate = speechRate;


        speech.Volume = volume;
        if (!pause)
        {
            speech.Speak(speakstr, SpeechVoiceSpeakFlags.SVSFlagsAsync);
        }
        else
        {
            speech.Resume();
        }
        return true;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
      protected void Button1_Click(object sender, EventArgs e)
      {

         

       

      }
      protected void res_TextChanged(object sender, EventArgs e)
     {
      //    List<ItemNews> Details = new List<ItemNews>();

      //    // httpWebRequest with API url
      //    HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://news.google.com/news?q=" + res.Text + "&output=rss");

      //    //Method GET
      //    request.Method = "GET";

      //    //HttpWebResponse for result
      //    HttpWebResponse response = (HttpWebResponse)request.GetResponse();


      //    //Mapping of status code
      //    if (response.StatusCode == HttpStatusCode.OK)
      //    {

      //        Stream receiveStream = response.GetResponseStream();
      //        StreamReader readStream = null;

      //        if (response.CharacterSet == "")
      //            readStream = new StreamReader(receiveStream);
      //        else
      //            readStream = new StreamReader(receiveStream, Encoding.GetEncoding(response.CharacterSet));

      //        //Get news data in json string

      //        string data = readStream.ReadToEnd();

      //        //Declare DataSet for put data in it.
      //        DataSet ds = new DataSet();
      //        StringReader reader = new StringReader(data);
      //        ds.ReadXml(reader);
      //        DataTable dtGetNews = new DataTable();

      //        if (ds.Tables.Count > 3)
      //        {
      //            dtGetNews = ds.Tables["item"];

      //            foreach (DataRow dtRow in dtGetNews.Rows)
      //            {
      //                ItemNews DataObj = new ItemNews();
      //                DataObj.title = dtRow["title"].ToString();
      //                DataObj.link = dtRow["link"].ToString();
      //                DataObj.item_id = dtRow["item_id"].ToString();
      //                DataObj.PubDate = dtRow["pubDate"].ToString();
      //                DataObj.Description = dtRow["description"].ToString();
      //                Details.Add(DataObj);





      //            }


      //        }

      //        GridView2.DataSource = dtGetNews;
      //        GridView2.DataBind();

      //    }
      }
      protected void Button2_Click(object sender, EventArgs e)
      {
          
      }


     
}