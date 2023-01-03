using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yemekid"];

            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Select * from tbl_Yemekler where yemekid=@p1", baglanti);
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    

                }
                baglanti.Close();

                if (Page.IsPostBack == false)
                {
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
        }

        protected void Btn_güncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4 where yemekid=@p5", baglanti);
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p5", id);


            cmd.ExecuteNonQuery();
            baglanti.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumunu false yaptık
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update tbl_Yemekler set durum=0", baglanti);
            komut.ExecuteNonQuery();
            baglanti.Close();

            //günün yemeği için durumu true yapma

            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Update tbl_Yemekler set durum=1 where yemekid=@p1", baglanti);
            komut2.Parameters.AddWithValue("@p1",id);
            komut2.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}