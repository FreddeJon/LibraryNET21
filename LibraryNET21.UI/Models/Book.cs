using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace LibraryNET21.UI.Models
{
    public class Book
    {
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [DisplayName("Available")]
        public bool IsAvailable { get; set; } = true;
        public Category Category { get; set; }
        public Author Author { get; set; }

        public BookAttribute Attributes { get; set; }
    }

    public class BookAttribute
    {
        public int Id { get; set; }
        public Cover Cover { get; set; }
        public int Pages { get; set; }
    }

    public class Cover
    {
        public int Id { get; set; }
        public string CoverType { get; set; }
    }
}
