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
        string connectionString = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
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
        }

    }
}