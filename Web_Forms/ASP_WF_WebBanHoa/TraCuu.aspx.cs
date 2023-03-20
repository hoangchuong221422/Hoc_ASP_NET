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
    public partial class TraCuu : System.Web.UI.Page
    {
        SqlConnection cnn;
        DataTable dtHoa;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
                DataTable dtHoa = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter("select * from hoa",cnn);

                da.Fill(dtHoa);

                rptHoa.DataSource = dtHoa;
                rptHoa.DataBind();
            }
        }

        protected void btntimkiem_Click(object sender, EventArgs e)
        {
            int giatu = int.Parse(txtgiatu.Text);
            int giaden = int.Parse(txtgiaden.Text);

             cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            DataTable dtHoa = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select * from hoa where gia>=" + giatu + "and gia <=" + giaden, cnn);
            da.Fill(dtHoa);

            rptHoa.DataSource = dtHoa;
            rptHoa.DataBind();

            

        }
    }
}