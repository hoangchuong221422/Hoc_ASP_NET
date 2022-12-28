using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchuyen_Click(object sender, EventArgs e)
        {
            lstboxbanh.Items.Add(ddlbanh.SelectedItem.Text + " " + txtsoluong.Text);
        }

        protected void imgbtnxoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = lstboxbanh.Items.Count; i < 0; i--)
            {
                if (lstboxbanh.Items[i].Selected)
                {
                    lstboxbanh.Items.RemoveAt(i);
                }
            }
        }
    }
}