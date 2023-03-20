using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ASP_WF_WebBanHoa
{
    public partial class ThemHoa : System.Web.UI.Page
    {
        SqlConnection cnn;
        DataTable dtHoa;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter("select * from loai", cnn);
                da.Fill(dt);

                drlDanhMucLoai.DataSource = dt;
                drlDanhMucLoai.DataTextField = "tenloai";
                drlDanhMucLoai.DataValueField = "maloai";
                drlDanhMucLoai.DataBind();                
            }
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into hoa (TenHoa,Gia,Hinh,MaLoai,NgayDang,SoLuotXem)" +
                "values(@tenhoa,@gia,@hinh,@maLoai,@ngaydang,@soluotxem)",conn);


            cmd.Parameters.AddWithValue("@tenhoa", txttenhoa.Text);
            cmd.Parameters.AddWithValue("@gia", txtgia.Text);
            if (fulHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads/hinh_san_pham") + "/" + fulHinh.FileName;
                fulHinh.SaveAs(path);
                cmd.Parameters.AddWithValue("@hinh", fulHinh.FileName);

            }
            else
            {
                cmd.Parameters.AddWithValue("@hinh", "no_image.png");
            }

            cmd.Parameters.AddWithValue("@maloai", drlDanhMucLoai.SelectedValue);
            cmd.Parameters.AddWithValue("@ngaydang", cldngaycapnhat.SelectedDate);
            cmd.Parameters.AddWithValue("@soluotxem", 0);

            if (cmd.ExecuteNonQuery()>0)
            {
                lblthongbao.Text = "Đã thêm 1 sản phẩm hoa";
            }else
            {
                lblthongbao.Text = "Thác thêm mới sản phẩm thất bại";
            }
            conn.Close();
        }
    }
}