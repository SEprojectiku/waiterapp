using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waiterApp
{
    public partial class CustomerSearchPage : System.Web.UI.Page
    {
        fillDropDown fdp = new fillDropDown();
        insertions insert = new insertions();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable dt = fdp.SelectedCountriesStates();
                SelectState.DataTextField = "name";
                SelectState.DataValueField = "id";
                SelectState.DataSource = dt;
                SelectState.DataBind();
            }
        }
    }
}