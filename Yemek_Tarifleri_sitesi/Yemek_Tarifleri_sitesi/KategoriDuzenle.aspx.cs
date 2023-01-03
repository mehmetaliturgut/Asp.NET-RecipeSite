using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            id = Request.QueryString["Kategoriid"];

            if (Page.IsPostBack==false)
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Select * from tbl_Kategoriler where Kategoriid=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                baglanti.Close();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            //int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
            SqlCommand komut2 = new SqlCommand("Update tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3", baglanti);
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery();

            baglanti.Close();
        }
    }
}