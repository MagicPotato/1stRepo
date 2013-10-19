using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Collections.Generic;

namespace WebApplication2
{
    public partial class _Default : System.Web.UI.Page
    {
public Dictionary<string, string> collection = new Dictionary<string, string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            collection.Add("Файл 1", "Описание файла 1 Описание файла 1 Описание файла 1 Описание файла 1 Описание файла 1 Описание файла 1 ");
            collection.Add("Файл 2", "Описание файла 2 Описание файла 2 Описание файла 2 Описание файла 2 Описание файла 2 Описание файла 2 Описание файла 2 ");
            collection.Add("Файл 3", "Описание файла 3 ");
        }
           protected void Button1_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("~/WebForm1.aspx");
        }
    }
}
