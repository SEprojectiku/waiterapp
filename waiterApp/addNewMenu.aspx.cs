using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waiterApp
{
    public partial class addNewMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ArrayList name = new ArrayList();
        insertions insert = new insertions();
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int i = 0;
            foreach (string key in Request.Form.Keys)
            {
               
                if (key.Contains("name"))
                {
                    name.Add(Request.Form[key].ToString());
                }
                
                i++;

            }
            insert.insertnewMenu(1,name, i); // 1 yerine business Id gelecek
        }
    }
}