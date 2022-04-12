using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using Daffodill.Domain;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;

namespace Daffodill.Infrastructure
{
    public class DaffodillDbContext: IdentityDbContext<IdentityUser>
    {
        public DaffodillDbContext(DbContextOptions<DaffodillDbContext> dbContextOptions) :base(dbContextOptions)
        {
        }
        public DbSet<Products> Products { get; set; }
        public DbSet<Words> Words { get; set; }
        public DbSet<WordsExamples> WordsExamples { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
        }
    }
}
