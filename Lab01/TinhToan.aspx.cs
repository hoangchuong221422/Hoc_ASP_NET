using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btCong_Click(object sender, EventArgs e)
        {
            int so1= int.Parse(txtSo1.Text);
            int so2 = int.Parse(txtSo2.Text);
            int kq = so1 + so2;
            txtKetQua.Text = kq.ToString();
        }

        protected void btChia_Click(object sender, EventArgs e)
        {
            int so1 = int.Parse(txtSo1.Text);
            int so2 = int.Parse(txtSo2.Text);
            int kq = so1 / so2;
            txtKetQua.Text = kq.ToString();
        }

        protected void btTru_Click(object sender, EventArgs e)
        {
            int so1 = int.Parse(txtSo1.Text);
            int so2 = int.Parse(txtSo2.Text);
            int kq = so1 - so2;
            txtKetQua.Text = kq.ToString();
        }

        protected void btNhan_Click(object sender, EventArgs e)
        {
            int so1 = int.Parse(txtSo1.Text);
            int so2 = int.Parse(txtSo2.Text);
            int kq = so1 * so2;
            txtKetQua.Text = kq.ToString();
        }
    }
}