using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_sitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tbl_Mesajlar (mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)",baglanti);
            komut.Parameters.AddWithValue("@p1", txt_adsoyad.Text);
            komut.Parameters.AddWithValue("@p2", txt_konu.Text);
            komut.Parameters.AddWithValue("@p3", txt_mail.Text);
            komut.Parameters.AddWithValue("@p4", txt_mesaj.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();

        }
    }
}