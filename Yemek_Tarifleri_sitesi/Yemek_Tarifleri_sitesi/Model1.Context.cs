//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Yemek_Tarifleri_sitesi
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class db_FoodWebEntities : DbContext
    {
        public db_FoodWebEntities()
            : base("name=db_FoodWebEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<tbl_GununYemegi> tbl_GununYemegi { get; set; }
        public virtual DbSet<tbl_Kategoriler> tbl_Kategoriler { get; set; }
        public virtual DbSet<tbl_Tarifler> tbl_Tarifler { get; set; }
        public virtual DbSet<tbl_Yemekler> tbl_Yemekler { get; set; }
        public virtual DbSet<tbl_Yonetici> tbl_Yonetici { get; set; }
        public virtual DbSet<tbl_Yorumlar> tbl_Yorumlar { get; set; }
    }
}
