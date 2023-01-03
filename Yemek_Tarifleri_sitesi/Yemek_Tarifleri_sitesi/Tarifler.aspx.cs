using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            baglanti.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbl_tarifler where Tarifdurum=0",baglanti);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd2 = new SqlCommand("Select * from tbl_tarifler where Tarifdurum=1", baglanti);
            SqlDataReader dr2 = cmd2.ExecuteReader();
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