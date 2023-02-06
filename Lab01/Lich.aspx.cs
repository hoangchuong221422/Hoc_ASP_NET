using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Lich : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblngayhn.Text = "Hôm nay là ngày: " + DateTime.Today.ToShortDateString();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string kq = "";
            DateTime ngaysinhnhat = Clngaysinh.SelectedDate;
            kq += "Ngày sinh nhật của bạn là "+ ngaysinhnhat.ToShortDateString() + "<br>";
            if (ngaysinhnhat < DateTime.Today)
            {
                kq += string.Format("Sinh nhật đã qua {0} ngày", DateTime.Today.Subtract(ngaysinhnhat).Days);
            }
            else if (ngaysinhnhat > DateTime.Today)
            {
                kq += string.Format("Sinh nhật còn {0} ngày nữa đến", ngaysinhnhat.Subtract(DateTime.Today).Days);
            }
            else
            {
                kq += string.Format("<h2>CHÚC MỪNG SINH NHẬT</h2>");
            }
            
            lblthongtin.Text = kq;
        }
    }
}