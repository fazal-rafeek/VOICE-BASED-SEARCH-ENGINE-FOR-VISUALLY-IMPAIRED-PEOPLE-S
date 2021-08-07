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
//using TextClustering.Lib;
using System.Data.SqlClient;

using System.Web.Services;
using System.Net;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{

    SqlConnection mycon = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\web.mdf;Integrated Security=True;User Instance=True");
    SqlCommand mycmd;
   // public static DocumentCollection docCollection;
    public class ItemNews
    {
        public string title { get; set; }
        public string link { get; set; }
        public string item_id { get; set; }
        public string PubDate { get; set; }
        public string Description { get; set; }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["pass"] = Request.QueryString["pass"].ToString();


        if ("Stop" == Session["pass"])
        {
            Response.Redirect("Home2.aspx");
        }
        // string name = Session["uname"].ToString();
        else
        {


            mycmd = new SqlCommand("truncate table historyc ", mycon);
            mycon.Open();
            mycmd.ExecuteNonQuery();
            mycon.Close();

            //cmd=new 
            List<ItemNews> Details = new List<ItemNews>();

            // httpWebRequest with API url
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://news.google.com/news?q=" + Session["pass"].ToString() + "&output=rss");

            //Method GET
            request.Method = "GET";

            //HttpWebResponse for result
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();


            //Mapping of status code
            if (response.StatusCode == HttpStatusCode.OK)
            {

                Stream receiveStream = response.GetResponseStream();
                StreamReader readStream = null;

                if (response.CharacterSet == "")
                    readStream = new StreamReader(receiveStream);
                else
                    readStream = new StreamReader(receiveStream, Encoding.GetEncoding(response.CharacterSet));

                //Get news data in json string

                string data = readStream.ReadToEnd();

                //Declare DataSet for put data in it.
                DataSet ds = new DataSet();
                StringReader reader = new StringReader(data);
                ds.ReadXml(reader);
                DataTable dtGetNews = new DataTable();

                if (ds.Tables.Count > 3)
                {
                    dtGetNews = ds.Tables["item"];

                    foreach (DataRow dtRow in dtGetNews.Rows)
                    {
                        ItemNews DataObj = new ItemNews();
                        DataObj.title = dtRow["title"].ToString();
                        DataObj.link = dtRow["link"].ToString();
                        DataObj.item_id = dtRow["item_id"].ToString();
                        DataObj.PubDate = dtRow["pubDate"].ToString();
                        DataObj.Description = dtRow["description"].ToString();
                        Details.Add(DataObj);


                        mycmd = new SqlCommand("insert into historyc (keyword,title,linktext,link,description,date) values(@keyword,@title,@linktext,@link,@description,@date)", mycon);
                        mycmd.Parameters.AddWithValue("@keyword", Session["pass"].ToString());
                        mycmd.Parameters.AddWithValue("@title", dtRow["title"].ToString());
                        mycmd.Parameters.AddWithValue("@linktext", dtRow["link"].ToString());
                        mycmd.Parameters.AddWithValue("@link", dtRow["item_id"].ToString());
                        mycmd.Parameters.AddWithValue("@description", dtRow["description"].ToString());
                        mycmd.Parameters.AddWithValue("@date", DateTime.Today.ToString());
                        mycon.Open();
                        mycmd.ExecuteNonQuery();
                        mycon.Close();



                    }


                }

                GridView2.DataSource = dtGetNews;
                GridView2.DataBind();

            }

            mycmd = new SqlCommand("delete from  historyc where title='This RSS feed URL is deprecated' ", mycon);
            mycon.Open();
            mycmd.ExecuteNonQuery();
            mycon.Close();

            Response.Redirect("Home2.aspx");


        }

    }
}