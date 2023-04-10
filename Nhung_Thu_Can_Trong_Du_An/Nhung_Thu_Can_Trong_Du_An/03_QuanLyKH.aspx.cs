using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Nhung_Thu_Can_Trong_Du_An
{
    public partial class _03_QuanLyKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvsinhvien_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["C21TH2_LTCSDLConnectionString"].ConnectionString);
            conn.Open();

        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}