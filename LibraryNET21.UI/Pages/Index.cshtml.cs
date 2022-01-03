using LibraryNET21.UI.Data;
using LibraryNET21.UI.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace LibraryNET21.UI.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public IndexModel(ILogger<IndexModel> logger, ApplicationDbContext context, UserManager<IdentityUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
            _roleManager = roleManager;
        }

        public IList<Book> Books { get; set; }

        [BindProperty(SupportsGet = true)]
        public string Category { get; set; }

        [BindProperty(SupportsGet = true)]
        public string SortOrder { get; set; }

        [BindProperty(SupportsGet = true)]
        public string Search { get; set; }


        public bool IsAuthenticated => User.Identity.IsAuthenticated;
        public async Task OnGetAsync()
        {
            var rightUser = await _userManager.FindByNameAsync("fredrikjonson@hotmail.se");
            var user = await _userManager.FindByIdAsync(User.FindFirstValue(ClaimTypes.NameIdentifier));
            bool isFound = await _roleManager.RoleExistsAsync("Admin");
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            Books = await _context.Books.Include(x => x.Category).Include(x => x.Author).ToListAsync();
            if (!string.IsNullOrEmpty(Search))
            {
                Books = Books.Where(b => b.Title.ToLower().Contains(Search.ToLower()) || b.Author.Name.ToLower().Contains(Search.ToLower())).ToList();
                var msg = $"Searched for {Search} at: {DateTime.Now}";
                _logger.LogInformation(msg);
            }


            Books = Category switch
            {
                "Category=Drama" => Books.Where(b => b.Category.CategoryTitle == "Drama").OrderBy(b => b.Title).ToList(),
                "Category=History" => Books.Where(b => b.Category.CategoryTitle == "History").OrderBy(b => b.Title).ToList(),
                "Category=Horror" => Books.Where(b => b.Category.CategoryTitle == "Horror").OrderBy(b => b.Title).ToList(),
                "Category=Novel" => Books.Where(b => b.Category.CategoryTitle == "Novel").OrderBy(b => b.Title).ToList(),
                "Category=ScienceFiction" => Books.Where(b => b.Category.CategoryTitle == "Science Fiction").OrderBy(b => b.Title).ToList(),
                "Category=Thriller" => Books.Where(b => b.Category.CategoryTitle == "Thriller").OrderBy(b => b.Title).ToList(),
                _ => Books.OrderBy(b => b.Title).ToList(),
            };

            Books = SortOrder switch
            {
                "?sort=TitleAsc" => Books.OrderBy(b => b.Title).ToList(),
                "?sort=TitleDesc" => Books.OrderByDescending(b => b.Title).ToList(),
                "?sort=AuthorAsc" => Books.OrderBy(b => b.Author.Name).ThenBy(b => b.Title).ToList(),
                "?sort=AuthorDesc" => Books.OrderByDescending(b => b.Author.Name).ThenBy(b => b.Title).ToList(),
                _ => Books.OrderBy(b => b.Title).ToList(),
            };
        }

        public async Task OnGetRentAsync(int id)
        {

            if (id > 0)
            {
                var rentedBook = await _context.Books.FindAsync(id);
                Rentals rented = new Rentals()
                {
                    UserId = User.FindFirstValue(ClaimTypes.NameIdentifier),
                    RentedBook = rentedBook,
                    DateRented = DateTime.Now,
                    IsReturned = false,
                };
                rentedBook.IsAvailable = false;
                _context.Rentals.Add(rented);
                _context.SaveChanges();
            }

            Books = await _context.Books.Include(x => x.Category).Include(x => x.Author).OrderBy(b => b.Title).ToListAsync();
        }

    }
}