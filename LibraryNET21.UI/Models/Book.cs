﻿using System.ComponentModel.DataAnnotations;

namespace LibraryNET21.UI.Models
{
    public class Book
    {
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        public bool IsAvailable { get; set; } = true;
        public Category Category { get; set; }
        public Author Author { get; set; }
    }
}
