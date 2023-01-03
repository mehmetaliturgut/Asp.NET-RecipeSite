using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select YemekAd From tbl_Yemekler where yemekid=@p1", baglanti);
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            baglanti.Close();

            //Yorumları Listeleme

            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Select * From tbl_Yorumlar where yemekid=@p2", baglanti);
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tbl_Yorumlar (yorumadsoyad,yorummail,yorumicerik,yemekid) values (@p1,@p2,@p3,@p4)", baglanti);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);

            komut.ExecuteNonQuery();
            baglanti.Close();

        }
    }
}