using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class Default3 : System.Web.UI.Page
{

    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["pass"] = Request.QueryString["id"].ToString();
        id = Request.QueryString["id"].ToString();

        foreach (Process p in Process.GetProcesses())
        {

            if (p.ProcessName == "playvoice")
            {

                p.Kill();

            }


        }


        System.Diagnostics.Process.Start(@"C:\Users\User\Desktop\fazal project\VoiceBased\playvoice\playvoice\bin\Debug\playvoice", id);


        Response.Redirect("Home2.aspx");



    }
}