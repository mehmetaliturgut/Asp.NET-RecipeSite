using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["yemekid"];
                islem = Request.QueryString["islem"];
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

            baglanti.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbl_Yemekler",baglanti);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();

            if (islem=="sil")
            {
                baglanti.Open();
                SqlCommand cmd3 = new SqlCommand("delete from tbl_Yemekler where yemekid=@p1", baglanti);
                cmd3.Parameters.AddWithValue("@p1", id);
                cmd3.ExecuteNonQuery();
                baglanti.Close();
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Insert into tbl_Yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid) values(@p1,@p2,@p3,@p4)", baglanti);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            baglanti.Close();

            //Kategori sayısını arttırma
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1",baglanti);
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglanti.Close();

        }
    }
}