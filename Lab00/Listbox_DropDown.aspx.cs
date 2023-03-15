using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab00
{
    public partial class Listbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // có thể hiện thị thông qua code            
            DropDownList1.Items.Add("Gì");
            DropDownList1.Items.Add("Vậy");
            DropDownList1.Items.Add("Ta");

            DropDownList1.SelectedIndex = 1;
            
        }
    }
}