using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_sitesi
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        db_FoodWebEntities db = new db_FoodWebEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList2.DataSource = db.tbl_Yemekler.ToList();
            DataList2.DataBind();
        }
    }
}