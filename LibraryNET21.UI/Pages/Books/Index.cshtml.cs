﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using LibraryNET21.UI.Data;
using LibraryNET21.UI.Models;

namespace LibraryNET21.UI.Pages.Books
{
    public class IndexModel : PageModel
    {
        private readonly LibraryNET21.UI.Data.ApplicationDbContext _context;

        public IndexModel(LibraryNET21.UI.Data.ApplicationDbContext context)
        {
            _context = context;
        }

        public IList<Book> Book { get;set; }

        public async Task OnGetAsync()
        {
            Book = await _context.Books.ToListAsync();
        }
    }
}
