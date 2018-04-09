using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waiterApp
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Equals("Customer"))
            {
                addressBox.Visible = false;
                Label9.Visible = false;
                Label5.Visible = false;
                restNameBox.Visible = false;
            }
            else
            {
                addressBox.Visible = true;
                Label9.Visible = true;
                Label5.Visible = true;
                restNameBox.Visible = true;
            }
                
        }

    }
}