using QLWebDaoTao.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLWebDaoTao.Models;

namespace QLWebDaoTao
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        MonHocDAO mhDAO = new MonHocDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                //lien ket du lieu cho gvMonhoc
                gvMonhoc.DataSource = mhDAO.getAll();
                gvMonhoc.DataBind();
            }
        }
    }
}