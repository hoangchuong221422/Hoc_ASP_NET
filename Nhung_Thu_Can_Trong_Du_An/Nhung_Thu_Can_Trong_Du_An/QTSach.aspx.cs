using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Nhung_Thu_Can_Trong_Du_An
{
    public partial class QTSach : System.Web.UI.Page
    {
        SqlConnection cnn;      
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            //    DataTable dtSach = new DataTable();
            //    SqlDataAdapter da = new SqlDataAdapter("select * from sach", cnn);

            //    da.Fill(dtSach);

            //    gvsach.DataSource = dtSach;
            //    gvsach.DataBind();
            //}
        }

        protected void btntracuu_Click(object sender, EventArgs e)
        {
            string giatri = txttimsach.Text;          

            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            DataTable dtHoa = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select * from sach where tensach like N'%"+ giatri + "%'", cnn);
            da.Fill(dtHoa);

            gvsach.DataSource = dtHoa;
            gvsach.DataBind();
        }
    }
}