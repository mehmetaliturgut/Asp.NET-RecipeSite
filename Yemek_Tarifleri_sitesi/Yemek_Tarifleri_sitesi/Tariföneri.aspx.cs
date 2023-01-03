using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_sitesi
{
    public partial class Tariföneri : System.Web.UI.Page
    {
        db_FoodWebEntities db = new db_FoodWebEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            tbl_Tarifler t = new tbl_Tarifler();
            t.TarifAd = txt_TarifAd.Text;
            t.TarifMalzeme = txtMalzemeler.Text;
            t.TarifYapilis = txtYapilis.Text;
            t.TarifResim = FU_Resim.FileName;
            t.TarifSahip = txtTarifOneren.Text;
            t.TarifSahilMail = txtMail.Text;
            db.tbl_Tarifler.Add(t);
            db.SaveChanges();
            Response.Write("Tarifiniz Değerlendirmeye Alınmıştır.");
        }
    }
}