using System.ComponentModel.DataAnnotations;

namespace okulSistem.Models
{
    public class Ders
    {
        [Key]
        public int Id { get; set; }
        [Required]  
        public string Ad { get; set; }

        public Ders(string ad)
        {
            Ad = ad;
        }

        public int Kredisi { get; set; }
        public int OkulYonetimId { get; set; }
        public Ders()
        {
        }

    }
}
