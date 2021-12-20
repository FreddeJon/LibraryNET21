using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using LibraryNET21.UI.Data;
using LibraryNET21.UI.Models;
using System.ComponentModel.DataAnnotations;

namespace LibraryNET21.UI.Pages.Books
{
    public class CreateModel : PageModel
    {
        private readonly LibraryNET21.UI.Data.ApplicationDbContext _context;

        public CreateModel(LibraryNET21.UI.Data.ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            Authors = _context.Authors.ToList();
            return Page();
        }

        [BindProperty]
        [Required]
        public Book Book { get; set; }
        public List<Author> Authors { get; private set; }

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }
            
            _context.Books.Add(Book);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
