using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        db_FoodWebEntities db = new db_FoodWebEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbl_Yemekler where Durum=1",baglanti);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}