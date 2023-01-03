using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbl_Mesajlar", baglanti);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
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
    }
}