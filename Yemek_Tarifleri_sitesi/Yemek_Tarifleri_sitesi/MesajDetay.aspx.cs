using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id =Request.QueryString["Mesajid"];
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbl_Mesajlar where Mesajid=@p1",baglanti);
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[3].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[4].ToString();

            }
            baglanti.Close();
        }
    }
}