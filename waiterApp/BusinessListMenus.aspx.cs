﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace waiterApp
{
    public partial class BusinessListMenus : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        fillDropDown filldropdownlist = new fillDropDown();
        PagedDataSource pagesource;
        protected void Page_Load(object sender, EventArgs e)
        {
            fill();
        }
        private void fill()
        {
            DataSet ds = filldropdownlist.listMenus(1); // 1 yerine session dan gelen veri yazolacak -- seçilen restoranın numarası
            pagesource = new PagedDataSource();
            pagesource.DataSource = ds.Tables[0].DefaultView;
            pagesource.PageSize = 10;
            pagesource.AllowPaging = true;

            DataList1.DataSource = pagesource;
            DataList1.DataBind();
        }

        protected void editbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            //int count = DataList1.Controls.Count;
            //int count2 = DataList1.Items.Count;
            //for (int i = 0; i < count; i++)
            //{
            //    TextBox txt = DataList1.Items[i].FindControl("nametxt") as TextBox;
            //    string txtbox = txt.Text;
            //    Label lbl = DataList1.Items[i].FindControl("idlbl") as Label;
            //    string id = lbl.Text;
            //    CheckBox chcbox = DataList1.Items[i].FindControl("onlinetick") as CheckBox;
            //    bool isonline = chcbox.Checked;

            //}
            Button Button1 = (Button)sender;
            Session["menuID"] = Button1.CommandArgument.ToString();
           
            Server.Transfer("EditMenuYeni.aspx", true);

        }

        protected void offlinebutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            Button Button1 = (Button)sender;
            con.Open();
            SqlCommand update = new SqlCommand("update [business].[menu] set isMenuOnline='" + 0 + "' where menuID = '" + Button1.CommandArgument + "'", con);
            update.ExecuteNonQuery();

            con.Close();

            fill();
        }

        protected void onlinebutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            Button Button1 = (Button)sender;
            con.Open();
            SqlCommand update = new SqlCommand("update [business].[menu] set isMenuOnline='" + 1 + "' where menuID = '" + Button1.CommandArgument + "'", con);
            update.ExecuteNonQuery();

            con.Close();

            fill();
        }
    }
}