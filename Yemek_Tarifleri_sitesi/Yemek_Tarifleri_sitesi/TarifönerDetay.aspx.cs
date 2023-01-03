using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class TarifönerDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack==false)
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Select * from tbl_Tarifler where Tarifid=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[4].ToString();
                    TextBox5.Text = dr[5].ToString();

                }
                baglanti.Close();

                //Kategori listeleme

                baglanti.Open();
                SqlCommand cmd2 = new SqlCommand("Select * from tbl_Kategoriler", baglanti);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                baglanti.Close();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //durum güncelleme
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("Update tbl_tarifler set Tarifdurum=1 where tarifid=@p1",baglanti);
            cmd.Parameters.AddWithValue("@p1", id);
            cmd.ExecuteNonQuery();
            baglanti.Close();

            //Yemeği anasayfaya ekleme
            baglanti.Open();
            SqlCommand cmd2 = new SqlCommand("insert into tbl_yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", baglanti);
            cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd2.ExecuteNonQuery();
            baglanti.Close();

            //Kategori Sayısını Arttırma
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriAdet = KategoriAdet + 1 WHERE KategoriId=@KategoriId", baglanti);
            komut3.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            baglanti.Close();

        }
    }
}