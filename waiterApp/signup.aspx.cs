using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace waiterApp
{
    
    public partial class signup : System.Web.UI.Page
    {
        fillDropDown filldropdownlist = new fillDropDown();
         static string connectionString = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        insertions insert = new insertions();
        encyption enc = new encyption();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!Page.IsPostBack)
            {
                DataTable dt = filldropdownlist.currency();
                currencylist.DataTextField = "currency";
                currencylist.DataValueField = "id";
                currencylist.DataSource = dt;
                currencylist.DataBind();

                DataTable dt2 = filldropdownlist.languages();
                langlist.DataTextField = "name";
                langlist.DataValueField = "id";
                langlist.DataSource = dt2;
                langlist.DataBind();

                DataTable dt3 = filldropdownlist.countries();
                countrylist.DataTextField = "name";
                countrylist.DataValueField = "id";
                countrylist.DataSource = dt3;
                countrylist.DataBind();

                for (int i = 0; i <= 31; i++)
                    day.Items.Insert(i, new ListItem(i.ToString(), i.ToString()));
                day.SelectedItem.Text = "Day";
                for (int i = 0; i <= 12; i++)
                    mount.Items.Insert(i, new ListItem(i.ToString(), i.ToString()));
                mount.SelectedItem.Text = "Mount";
                for (int i = 1940; i <= 2018; i++)
                    year.Items.Insert(i-1940, new ListItem(i.ToString(), i.ToString()));
                year.SelectedItem.Text = "Year";
            }
        }

        protected void countrylist_SelectedIndexChanged(object sender, EventArgs e)
        {
            int countryid = Convert.ToInt32(countrylist.SelectedValue);
            DataTable dt = filldropdownlist.states(countryid);
            cityist.DataTextField = "name";
            cityist.DataValueField = "id";
            cityist.DataSource = dt;
            cityist.DataBind();
        }

        protected void businessBtn_Click(object sender, EventArgs e)
        {
            
            
            string password = enc.CreateMD5(pass1.Text.Trim());

            insert.insertUser(nameBox.Text.Trim(), srnameBox.Text.Trim(), usename.Text.Trim(), email_txtb.Text.Trim(), phone1.Text.Trim(), "2007-04-16", "M", 3, 1, 1, "asdas", password);
        }

        protected void customerBtn_Click(object sender, EventArgs e)
        {

            string password = enc.CreateMD5(pass1.Text.Trim());

            insert.insertUser(nameBox.Text.Trim(), srnameBox.Text.Trim(), usename.Text.Trim(), email_txtb.Text.Trim(), phone1.Text.Trim(), "2007-04-16", "M", 3, 1, 1, "asdas", password);
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //string birth = year.SelectedValue.ToString() +"-"+ mount.SelectedValue.ToString() +"-"+
            //                day.SelectedValue.ToString();
            //string dateAsString = DateTime.Now.ToString("yyyy-MM-dd");

               string password = enc.CreateMD5(pass1.Text.Trim());

                insert.insertUser(nameBox.Text.Trim(), srnameBox.Text.Trim(), usename.Text.Trim(), email_txtb.Text.Trim(), phone1.Text.Trim(),  "2007-04-16", "M", 3, 1, 1, "asdas", password);

                success.Visible = true;
                

           
        }
    }
}