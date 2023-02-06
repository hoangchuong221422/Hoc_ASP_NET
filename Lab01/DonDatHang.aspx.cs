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
            char[] strChar = { '(', ')' };
            int tmp;
            foreach (ListItem item in lstboxbanh.Items)
            {
                string[] strArr = item.Text.Split(strChar);
                if (strArr[0] == ddlbanh.SelectedItem.Text)
                {
                    tmp = int.Parse(strArr[1]);
                    return;        
                }
            }
            lstboxbanh.Items.Add(ddlbanh.SelectedItem.Text + " (" + txtsoluong.Text + ")");
                      
        }

        protected void imgbtnxoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = lstboxbanh.Items.Count -1 ; i >= 0; i--)
            {
                if (lstboxbanh.Items[i].Selected)
                {
                    lstboxbanh.Items.RemoveAt(i);
                }
            }
        }

        protected void btnInDon_Click(object sender, EventArgs e)
        {
            // xuat thong tin

            string ketqua = "";
            ketqua = "<h2> Hoá đơn đặt hàng </h2>";
            ketqua += "Tên khách hàng: <i>"+ txtkhachhang.Text + "</i> <br/>";
            ketqua += "Địa chỉ: <i>" + txtdiachi.Text + "</i> <br/>";
            ketqua += "Mã số thuế <i>" + txtmasothue.Text + "</i> <br/>";

            ketqua += "Thông tin đặt hàng <br/>";
            char[] strChar = { '(', ')' };
            ketqua += "<table border =1 width=100%>";
            foreach (ListItem item in lstboxbanh.Items)
            {
                string[] strArr = item.Text.Split(strChar);
                ketqua += string.Format("<tr><td>{0}</td><td>{1}</td></tr>",strArr[0], strArr[1]);
            }
            ketqua += "</table>";
            lblthongtin.Text = ketqua;
        }
    }
}