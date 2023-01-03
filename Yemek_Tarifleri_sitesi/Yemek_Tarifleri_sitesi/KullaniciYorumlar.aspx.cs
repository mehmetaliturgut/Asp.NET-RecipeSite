using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Yemek_Tarifleri_sitesi
{
    public partial class KullaniciYorumlar : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            //Onaylı Yorumlar
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from tbl_Yorumlar where YorumOnay=1", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();
            //Onaysız Yorumlar
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Select * from tbl_Yorumlar where YorumOnay=0", baglanti);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

            baglanti.Close();

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
    }
}