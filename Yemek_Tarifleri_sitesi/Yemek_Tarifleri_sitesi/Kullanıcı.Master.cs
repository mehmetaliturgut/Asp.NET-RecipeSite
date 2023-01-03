using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_sitesi
{
    public partial class Kullanıcı : System.Web.UI.MasterPage
    {
        db_FoodWebEntities db = new db_FoodWebEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = db.tbl_Kategoriler.ToList();
            DataList1.DataBind();
        }
    }
}