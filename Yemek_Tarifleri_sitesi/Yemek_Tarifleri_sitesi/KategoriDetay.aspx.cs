using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            kategoriid = Request.QueryString["kategoriid"];
            SqlCommand komut = new SqlCommand("Select * from tbl_yemekler where kategoriid=@p1",baglanti);
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            baglanti.Close();

        }
    }
}