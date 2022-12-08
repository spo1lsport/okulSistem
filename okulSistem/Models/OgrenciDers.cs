using System.ComponentModel.DataAnnotations;

namespace okulSistem.Models
{
    public class OgrenciDers
    {
        [Key]
        public int Id { get; set; }
        public int DersId { get; set; }
        public int OgrenciId { get; set; }
        public OgrenciDers()
        {

        }
    }
}
