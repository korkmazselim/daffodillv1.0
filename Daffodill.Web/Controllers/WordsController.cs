using Daffodill.Application;
using Daffodill.Domain;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Daffodill.Web.Controllers
{

    public class WordsController : Controller
    {
        private IWordsService _WordsService;
        public WordsController(IWordsService WordsService)
        {
            _WordsService = WordsService;
        }

        [Authorize]

        public ActionResult Index()
        {
            return View();
        }
        [Authorize]

        [HttpPost]
        public ActionResult Index(Words words)
        {
            if (!ModelState.IsValid)
                return View(words);

            var result = _WordsService.CreateNewWord(words);
            return View();
        }

        public ActionResult List(string Page)
        {
            if (Page == null)
                Page = "1";
            var view = _WordsService.GetWords(Convert.ToInt32(Page));
            return View(view);
        }

        public ActionResult GetRandom()
        {
            var result = _WordsService.GetRandomWord();
            return View(result);
        }
        
    }
}
