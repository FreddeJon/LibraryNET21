using System.ComponentModel;

namespace LibraryNET21.UI.Models
{
    public class Rentals
    {
        public int Id { get; set; }

        [DisplayName("Book")]
        public Book RentedBook { get; set; }

        [DisplayName("Rented by")]
        public string UserId { get; set; }
        public bool IsReturned { get; set; } = false;

        [DisplayName("Rented")]
        public DateTime DateRented { get; set; }
        [DisplayName("Returned")]
        public DateTime DateReturned { get; set; }
    }
}
