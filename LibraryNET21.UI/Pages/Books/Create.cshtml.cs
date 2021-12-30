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
        private readonly ApplicationDbContext _context;

        public CreateModel(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            ViewData["Authors"] = new SelectList(_context.Authors.OrderBy(x => x.Name), nameof(Author.Id), nameof(Author.Name));
            ViewData["Categories"] = new SelectList(_context.Categories.OrderBy(x => x.CategoryTitle), nameof(Category.Id), nameof(Category.CategoryTitle));
            ViewData["Covers"] = new SelectList(_context.Covers.OrderBy(x => x.CoverType), nameof(Cover.Id), nameof(Cover.CoverType));
            return Page();
        }


        [BindProperty]
        [Required]
        public Book Book { get; set; }


        [BindProperty]
        [Required(ErrorMessage = "Author is required.")]
        public int AuthorId { get; set; }

        [BindProperty]
        [Required(ErrorMessage = "Category is required.")]
        public int CategoryId { get; set; }

        [BindProperty]
        [Required(ErrorMessage = "CoverId is required.")]
        public int CoverId { get; set; }


        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid) return Page();

            Book.Author = _context.Authors.First(c => c.Id == AuthorId);
            Book.Category = _context.Categories.First(c => c.Id == CategoryId);       
            Book.Attributes.Cover = _context.Covers.First(c => c.Id == CoverId);
            _context.Books.Add(Book);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
