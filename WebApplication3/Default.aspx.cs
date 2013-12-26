using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;

namespace WebApplication3
{
    public class OurItem
    {
        public int id;
        public string name;
        public string description;

        public string Name { get {return name;} }
        public string Description { get {return description;} }
        public int Id { get { return id; } }
    }

    public partial class Default : System.Web.UI.Page
    {
        List<OurItem> our_items=new List<OurItem>();

        protected void Page_Load(object sender, EventArgs e)
        {
            string myConnectionString = "Server=tcp:fiiomvs75r.database.windows.net,1433;Database=LabaDB;User ID=laba4305@fiiomvs75r;Password=1qazse432!;Trusted_Connection=False;Encrypt=True;Connection Timeout=30;";
            using (SqlConnection connection = new SqlConnection(myConnectionString))
            {
                connection.Open();
                string sqlQuery = "select * from OurTable";
                SqlCommand command = new SqlCommand(sqlQuery, connection/*, transaction*/);
                var reader = command.ExecuteReader();
                while (reader.Read())
                {
                    var newitem = new OurItem();
                    newitem.id = reader.GetInt32(0);
                    newitem.name = reader.GetString(1);
                    newitem.description = reader.GetString(2);
                    our_items.Add(newitem);
                }
                reader.Close();
                connection.Close();
            }
        }

        void DataBind()
        {
            Repeater1.DataSource=our_items;
            Repeater1.DataBind();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            DataBind();
        }
        protected void delete_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var id = Convert.ToInt32(button.CommandArgument);
            int n = -1;
            do
            {
                n++;
            }
            while (id != our_items[n].id);

            string myConnectionString = "Server=tcp:fiiomvs75r.database.windows.net,1433;Database=LabaDB;User ID=laba4305@fiiomvs75r;Password=1qazse432!;Trusted_Connection=False;Encrypt=True;Connection Timeout=30;";
            using (SqlConnection connection = new SqlConnection(myConnectionString))
            {
                connection.Open();
                string sqlQuery = "DELETE FROM OurTable WHERE Id = " + id + ";";
                SqlCommand command = new SqlCommand(sqlQuery, connection/*, transaction*/);
                var reader = command.ExecuteNonQuery();
                connection.Close();
                System.IO.File.Delete(Server.MapPath("//") + our_items[n].name);
            }
            Response.Redirect("~/Default.aspx");
        }

        protected void loadButton_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var id = Convert.ToInt32(button.CommandArgument);
            int n = -1;
            do
            {
                n++;
            }
            while (id != our_items[n].id);

            Page.Response.Redirect("~/" + our_items[n].name);
        }

        protected void changeButton_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var id = Convert.ToInt32(button.CommandArgument);
           
            string myConnectionString = "Server=tcp:fiiomvs75r.database.windows.net,1433;Database=LabaDB;User ID=laba4305@fiiomvs75r;Password=1qazse432!;Trusted_Connection=False;Encrypt=True;Connection Timeout=30;";
            using (SqlConnection connection = new SqlConnection(myConnectionString))
            {
                connection.Open();
                string sqlQuery = "update OurTable set Description='" + CDTB.Text + "' Where ID=" + id + ';';
                SqlCommand command = new SqlCommand(sqlQuery, connection/*, transaction*/);
                var reader = command.ExecuteNonQuery();
                connection.Close();
            }
            Page.Response.Redirect("~/Default.aspx");
        }

        protected void ULbutton_Click(object sender, EventArgs e)
        {
            if (OurFileUpload.HasFile)
            {
                string path = Server.MapPath("//");

                OurFileUpload.SaveAs(path + OurFileUpload.FileName);

                var OurNewFile = new OurItem();
                OurNewFile.name = OurFileUpload.FileName;
                OurNewFile.description = ULTB.Text;


                string myConnectionString = "Server=tcp:fiiomvs75r.database.windows.net,1433;Database=LabaDB;User ID=laba4305@fiiomvs75r;Password=1qazse432!;Trusted_Connection=False;Encrypt=True;Connection Timeout=30;";
                using (SqlConnection connection = new SqlConnection(myConnectionString))
                {
                    connection.Open();
                    var transaction = connection.BeginTransaction();

                    string sqlQuery = "select ID from OurTable";
                    SqlCommand command = new SqlCommand(sqlQuery, connection, transaction);
                    var reader = command.ExecuteReader();
                    int lastID = 0;
                    while (reader.Read())
                    {
                        lastID = reader.GetInt32(0);
                    }
                    reader.Close();
                    OurNewFile.id = lastID + 1;
                    sqlQuery = "insert into OurTable (ID, Name, Description)  values (" + OurNewFile.id + "," + "'" + OurNewFile.name + "'" + "," + "'" + OurNewFile.description + "');";
                    command = new SqlCommand(sqlQuery, connection, transaction);
                    var reader1 = command.ExecuteNonQuery();
                    transaction.Commit();
                    connection.Close();
                }
                Page.Response.Redirect("~/Default.aspx");
            }
        }
    }
}
