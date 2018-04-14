using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace waiterApp
{
    public partial class editTables : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        fillDropDown fdp = new fillDropDown();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Repeater1.DataSource = fdp.tableTypes(1);
                Repeater1.DataBind();

            }
        }
        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand komut = new SqlCommand("SELECT * FROM [business].[tableinfo] ti inner join [dbo].[tableTypes] tt on ti.tableType = tt.typeID where tt.typeID=" + Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "typeID")), con);// işletmeye özel sorgu için businessID GİRİLECEK eKSİK
            con.Open();
            Repeater rp = (Repeater)e.Item.FindControl("Repeater2");
            rp.DataSource = komut.ExecuteReader();
            rp.DataBind();
            komut.Dispose();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            Button Button1 = (Button)sender;
            con.Open();
            SqlCommand delete = new SqlCommand("delete from [business].[tableinfo] where tID = '" + Button1.CommandArgument + "'", con);
            delete.ExecuteNonQuery();

            con.Close();

        }
    }
}