using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using LibraryNET21.UI.Data;
using LibraryNET21.UI.Models;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Authorization;

namespace LibraryNET21.UI.Pages.Admin.Books
{
    [Authorize(Roles = "Admin")]
    public class EditModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public EditModel(ApplicationDbContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Book Book { get; set; }

        [BindProperty]
        [Required]
        public int AuthorId { get; set; }

        [BindProperty]
        [Required]
        public int CategoryId { get; set; }

        [BindProperty]
        [Required]
        public int CoverId { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            ViewData["Authors"] = new SelectList(_context.Authors.OrderBy(x => x.Name), nameof(Author.Id), nameof(Author.Name));
            ViewData["Categories"] = new SelectList(_context.Categories.OrderBy(x => x.CategoryTitle), nameof(Category.Id), nameof(Category.CategoryTitle));
            ViewData["Covers"] = new SelectList(_context.Covers.OrderBy(x => x.CoverType), nameof(Cover.Id), nameof(Cover.CoverType));

            if (id == null)
            {
                return NotFound();
            }

            Book = await _context.Books.Include(b => b.Author).Include(b => b.Category).Include(b => b.Attributes).ThenInclude(a => a.Cover).FirstOrDefaultAsync(m => m.Id == id);

            try
            {
                CategoryId = Book.Category.Id;
                AuthorId = Book.Author.Id;
                CoverId = Book.Attributes.Cover.Id;
            }
            catch (Exception)
            {

            }

            if (Book == null)
            {
                return NotFound();
            }

            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            var id = Book.Id;
            var pages = Book.Attributes.Pages;
            Book = await _context.Books.Include(b => b.Author).Include(b => b.Category).Include(b => b.Attributes).ThenInclude(a => a.Cover).FirstOrDefaultAsync(m => m.Id == id);
            Book.Category = _context.Categories.Find(CategoryId);
            Book.Author = _context.Authors.Find(AuthorId);
            Book.Attributes.Cover = _context.Covers.Find(CoverId);
            Book.Attributes.Pages = pages;
            _context.Attach(Book).State = EntityState.Modified;


            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!BookExists(Book.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool BookExists(int id)
        {
            return _context.Books.Any(e => e.Id == id);
        }
    }
}
