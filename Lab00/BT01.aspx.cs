using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab00
{
    public partial class BT01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;

            ListItem newItem = new ListItem(name);

            if (lstDanhSach.Items.Contains(newItem))
            {
                Label1.Text = "Đã tồn tại tên này trong listBox";
                return;
            }
            lstDanhSach.Items.Add(newItem);
        }
    }
}