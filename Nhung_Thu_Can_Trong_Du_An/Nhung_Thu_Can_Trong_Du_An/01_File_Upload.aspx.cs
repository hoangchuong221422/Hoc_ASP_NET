using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Nhung_Thu_Can_Trong_Du_An
{
    public partial class _01_File_Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtUpload_Click(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 0;
        }

        protected void lbtXemUpload_Click(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 1;
        }

        protected void lstFile_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (Fupload.HasFile) // KT người dùng có chọn tập tin không?
            {
                // lấy đường dẫn để lưu tập tin trên server
                string path = Server.MapPath("~/images/") + Fupload.FileName;
                Fupload.SaveAs(path);
                lbltb.Text = "Thêm thành công";
            }
            else
            {
                lbltb.Text = "Thêm thất bại";
            }

            // xuất tất cả các tập tin đã upload ra điều khiển
            DirectoryInfo dir = new DirectoryInfo(Server.MapPath("~/images"));
            // lấy danh sách các tập tin trong thư mục
            FileInfo[] fis = dir.GetFiles();
            lstFile.Items.Clear();

            foreach (FileInfo f in fis)
            {
                lstFile.Items.Add(f.Name);
            }
        }

        protected void lbtUpload_Click1(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 0;
        }

        protected void lbtXemUpload_Click1(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 1;
        }
    }
}