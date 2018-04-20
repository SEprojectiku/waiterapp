﻿using System;
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
                DataTable CategoryTable = fdp.BusinessCategories();
                CategoryButtonList.DataSource = CategoryTable;
                CategoryButtonList.DataBind();
                SelectState.DataTextField = "name";
                SelectState.DataValueField = "id";
                SelectState.DataSource = dt;
                SelectState.DataBind();
                Panel2.Visible = false;
            }
        }

        protected void SearchResID_Click(object sender, EventArgs e)
        {
            string city =SelectState.SelectedItem.Value;
            string searchbar = TextBox1.Text;
            BusinessList.DataSource = fdp.getBusinessList(city, searchbar);
            BusinessList.DataBind();

            if (Panel2.Visible == false)
            {
                Panel2.Visible = true;
            }






        }

       




    }
}