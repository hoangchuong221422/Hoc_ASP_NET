using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab00
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_ServerClick(object sender, EventArgs e)
        {
            string file = File1.PostedFile.FileName;

            // trích tên file trong chuỗi đường dẫn
            string filename = System.IO.Path.GetFileName(file);

            // chep tap tin len thu muc "upload"
            File1.PostedFile.SaveAs(Server.MapPath("Upload\\") +
                     filename);
            // hiển thị thông báo cho user biết
            lblThongBao.InnerHtml = "<i>Upload completed! </i>";

        }
    }
}