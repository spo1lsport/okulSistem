using System.ComponentModel.DataAnnotations;

namespace okulSistem.Models
{
    public class OkulYonetim
    {
        [Key]
        public int Id { get; set; }
        public string AdSoyad { get; set; }

        public OkulYonetim(string adSoyad, string gorevi)
        {
            AdSoyad = adSoyad;
            Gorevi = gorevi;
        }

        public string Gorevi { get; set; }
        public YonetimTips YonetimTip { get; set; }
        public enum YonetimTips : int
        {
            Idare = 11,
            Ogretmen = 12,
            OgrenciIsleri = 13,
        }
        public OkulYonetim()
        {

        }

    }
}
