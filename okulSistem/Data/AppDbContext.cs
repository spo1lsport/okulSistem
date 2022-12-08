using Microsoft.EntityFrameworkCore;
using okulSistem.Models;

namespace okulSistem.Data
{
    public class AppDbContext :DbContext
    {
        public AppDbContext()
        {
        }

        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=DESKTOP-43B5HB4;Database=Okul;Trusted_Connection=True;Encrypt=False");
        }

        public DbSet<Ders> Ders { get; set; }
        public DbSet<Ogrenci> Ogrenci { get; set; }
        public DbSet<OgrenciDers> OgrenciDers { get; set; }
        public DbSet<OkulYonetim> OkulYonetim { get; set; }
    }

}
