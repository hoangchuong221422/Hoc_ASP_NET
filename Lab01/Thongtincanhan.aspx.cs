using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Thongtincanhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string kq = "<h3> Thông tin về bạn </h3>";
            kq += "<ul>";
            // Lấy tên
            kq += "<li> Họ Tên" + txthoten.Text + "</li>";

            // Lấy giới tính
            if (rdtnam.Checked)
                kq += "<li>Giới Tính: Nam </li>";
            else
                kq += "<li>Giới Tính: Nữ </li>";

            // Lấy ngoại ngữ:
            kq += "<li>Ngoại ngữ: ";
            string chuoiNN="";          
            if (chkAnhVan.Checked)
                chuoiNN = "Anh Văn";
            if (chkPhapVan.Checked)
                chuoiNN = "Pháp Văn";
            if (chkAnhVan.Checked && chkPhapVan.Checked)
                chuoiNN = "Anh Văn, Pháp Văn";
            kq += chuoiNN + "</li>";
            // Lấy mức thu nhập  

            // Kết qua:
            kq += "<ul/>";
            lbketqua.Text= kq;
        }
    }
}