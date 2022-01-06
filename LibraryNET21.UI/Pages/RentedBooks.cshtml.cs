using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using LibraryNET21.UI.Data;
using LibraryNET21.UI.Models;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;

namespace LibraryNET21.UI.Pages
{
    [Authorize]
    public class RentedBooksModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public RentedBooksModel(ApplicationDbContext context)
        {
            _context = context;
        }

        public IList<Rentals> Rentals { get; set; }

        public async Task OnGetAsync()
        {
            await LoadRentals();
        }


        public async Task OnGetReturnAsync(int id)
        {
            await LoadRentals();

            var rental = await _context.Rentals.FindAsync(id);
            rental.IsReturned = true;
            rental.DateReturned = DateTime.Now;

            var bookReturned = await _context.Books.FindAsync(rental.RentedBook.Id);
            bookReturned.IsAvailable = true;

            await _context.SaveChangesAsync();
        }


        public async Task<IList<Rentals>> LoadRentals()
        {
            Rentals = await _context.Rentals.Where(r => r.UserId == GetUserId())
                                    .Include(r => r.RentedBook)
                                    .Include(r => r.RentedBook.Author)
                                    .Include(r => r.RentedBook.Category)
                                    .Include(r => r.RentedBook.Attributes).ToListAsync();
            return Rentals;
        }


        private string GetUserId() => User.FindFirstValue(ClaimTypes.NameIdentifier);
    }
}
