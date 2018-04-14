using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
namespace waiterApp
{
    public partial class EditMenuYeni : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        fillDropDown fdp = new fillDropDown();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                Repeater1.DataSource = fdp.menucategories(1); //menu id girilecek
                Repeater1.DataBind();

            }
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            
            SqlCommand komut = new SqlCommand("SELECT * FROM [business].[menudetails] md inner join [business].[menu] m on m.menuID = md.menuID where m.bID = 1 and md.catID=" + Convert.ToInt32(DataBinder.Eval(e.Item.DataItem,"catID")), con);// işletmeye özel sorgu için businessID GİRİLECEK eKSİK
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
            SqlCommand delete = new SqlCommand("delete from [business].[menudetails] where foodbeveragesID = '" + Button1.CommandArgument + "'", con);
            delete.ExecuteNonQuery();

            con.Close();

            Repeater1.DataSource = fdp.menucategories(1);
            Repeater1.DataBind();
        }
    }


}
