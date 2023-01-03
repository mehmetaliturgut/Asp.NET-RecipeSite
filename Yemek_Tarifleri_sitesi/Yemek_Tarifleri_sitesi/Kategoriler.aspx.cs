using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
    
namespace Yemek_Tarifleri_sitesi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        db_FoodWebEntities db = new db_FoodWebEntities();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }

            DataList1.DataSource = db.tbl_Kategoriler.ToList();
            DataList1.DataBind();
            Panel2.Visible = false;
            Panel4.Visible = false;

            //silme işlemi
            
            if (islem=="sil")
            {
                //int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
                baglanti.Open();
                SqlCommand cmddelete = new SqlCommand("Delete from tbl_Kategoriler where Kategoriid=@p1",baglanti);
                cmddelete.Parameters.AddWithValue("@p1", id);
                cmddelete.ExecuteNonQuery();
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
            SqlCommand komut = new SqlCommand("insert into tbl_Kategoriler (KategoriAd) values(@p1)", baglanti);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            //tbl_Kategoriler k = new tbl_Kategoriler();
            //k.KategoriAd = TextBox1.Text;
            //db.tbl_Kategoriler.Add(k);
            //db.SaveChanges();
            //Response.Write(" Kategori Eklenmiştir.");
        }
    }
}