using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_sitesi
{
    public class sqlconnect
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-DI7028V\\SQLEXPRESS;Initial Catalog=db_FoodWeb;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}