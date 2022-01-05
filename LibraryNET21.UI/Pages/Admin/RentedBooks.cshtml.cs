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

namespace LibraryNET21.UI.Pages.Admin
{
    [Authorize(Roles ="Admin")]
    public class RentedBooksModel : PageModel
    {
        private readonly LibraryNET21.UI.Data.ApplicationDbContext _context;

        public RentedBooksModel(LibraryNET21.UI.Data.ApplicationDbContext context)
        {
            _context = context;
        }

        public IList<Rentals> Rentals { get;set; }

        public async Task OnGetAsync()
        {
            Rentals = await _context.Rentals.Include(r => r.RentedBook).ToListAsync();
        }
    }
}
