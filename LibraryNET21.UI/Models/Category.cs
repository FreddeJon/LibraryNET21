namespace LibraryNET21.UI.Models
{
    public class Category
    {
        public int Id { get; set; }
        public string CategoryTitle { get; set; }
        public List<Book> Books { get; set; }
    }
}
