using System.ComponentModel.DataAnnotations;

namespace okulSistem.Models
{
    public class Ogrenci
    {
        [Key]
        public int Id { get; set; } 

        public string AdSoyad { get; set; }

        public Ogrenci(string adSoyad, string bolum)
        {
            AdSoyad = adSoyad;
            Bolum = bolum;
        }

        public DateTime KayitTarih { get; set; } = DateTime.Now;

        public int OgrenciNo { get; set; }

        public DateTime DTarih { get; set; }

        public string Bolum { get; set; }
        
        public Ogrenci()
        {

        }
    }
}
