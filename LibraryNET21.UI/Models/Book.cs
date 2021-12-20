namespace LibraryNET21.UI.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public bool IsAvailable { get; set; }
        public List<Category> Categories { get; set; } = new List<Category>();
        public List<Author> Authors { get; set; } = new List<Author>();
    }
}
