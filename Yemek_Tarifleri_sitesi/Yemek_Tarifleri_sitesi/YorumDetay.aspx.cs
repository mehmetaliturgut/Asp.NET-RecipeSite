using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                SqlCommand cmd = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd " +
                    "from tbl_Yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1", baglanti);
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txt_adsoyad.Text = dr[0].ToString();
                    txt_mail.Text = dr[1].ToString();
                    txt_icerik.Text = dr[2].ToString();
                    txt_yemek.Text = dr[3].ToString();
                }
                baglanti.Close();
            }


        }

        protected void Btn_Onay_Click(object sender, EventArgs e)
        {


            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update tbl_yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where Yorumid=@p3", baglanti);
            komut.Parameters.AddWithValue("@p1", txt_icerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            baglanti.Close();



        }
    }
}