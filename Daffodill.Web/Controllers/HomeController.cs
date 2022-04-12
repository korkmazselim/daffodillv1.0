using Daffodill.Domain;
using Daffodill.Infrastructure;
using Daffodill.Web.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace Daffodill.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly DaffodillDbContext _DaffodillDbContext;
        public HomeController(ILogger<HomeController> logger,DaffodillDbContext daffodillDbContext)
        {
            _logger = logger;
            _DaffodillDbContext = daffodillDbContext;
        }

        public IActionResult Index()
        {
            Products products = new Products();
            products.ProductName = "asd";
            _DaffodillDbContext.Products.Add(products);
            _DaffodillDbContext.SaveChanges();
            return View();
        }

        [Authorize]
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
