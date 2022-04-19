using Daffodill.Domain;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using URF.Core.Abstractions;
using URF.Core.Abstractions.Trackable;
using URF.Core.EF;
using URF.Core.Services;

namespace Daffodill.Application
{
    public class WordsService : Service<Words>, IWordsService
    {
        public ITrackableRepository<Words> _WordsRepository;
        public DbContext _DbContext;
        public DbSet<Words> _DbSet;
        public WordsService(ITrackableRepository<Words> WordsRepository,DbContext DbContext):base(WordsRepository)
        {
            _DbContext = DbContext;
            _DbSet = _DbContext.Set<Words>();
        }

        public Words CreateNewWord(Words Words)
        {
            foreach (var _WordsMeaning in Words.WordsMeanings.ToList())
            {
                if (String.IsNullOrEmpty(_WordsMeaning.Meaning))
                {
                    Words.WordsMeanings.Remove(_WordsMeaning);
                    continue;
                }
                foreach (var _WordsExamples in _WordsMeaning.WordsExamples.ToList())
                {
                    if (String.IsNullOrEmpty(_WordsExamples.Example))
                    {
                        _WordsMeaning.WordsExamples.Remove(_WordsExamples);
                    }
                }
            }
            Words.CreatedDate = DateTime.Now;
            _DbSet.Add(Words);
            _DbContext.SaveChanges();

            return Words;
        }

        public Words GetRandomWord()
        {
            Random random = new Random();
            var rowCount = Repository.Queryable().Count();
            var randomNumber = random.Next(1, rowCount);
            var searchResult = WordsBaseQuery().Skip(randomNumber).Take(1).Include(x=>x.WordsMeanings).Include("WordsMeanings.WordsExamples").FirstOrDefault();
            searchResult.ViewCount++;
            searchResult.LastViewedDate = DateTime.Now;
            _DbContext.SaveChanges();
            return searchResult;
        }

        public Words GetWordById(int id)
        {
            return WordsBaseQuery().Where(x => x.Id == id).FirstOrDefault();
        }
        public IQueryable<Words> WordsBaseQuery() 
        {
            return Repository.Queryable().Include(x => x.WordsMeanings).Include("WordsMeanings.WordsExamples");
        }

        public ListWordsView GetWords(int PageNumber)
        {
            ListWordsView _ListWordsView = new ListWordsView();
            int perPage = 20;
            _ListWordsView.CurrentPage = PageNumber;
            var count = (int)(Repository.Queryable().Count() / perPage);
            var Result = WordsBaseQuery().Skip(((PageNumber - 1 )* perPage)).Take(perPage).OrderBy(x=>x.Id).ToList();
            _ListWordsView.Words = Result;
            _ListWordsView.PageCount = count;
            return _ListWordsView;
        }

        public ListWordsView GetWordsBySearchKey(string SearchKey)
        {
            ListWordsView listWordsView = new ListWordsView();
            var result = WordsBaseQuery().Where(x => x.English.Contains(SearchKey)).ToList();
            listWordsView.Words = result;
            return listWordsView;
        }
    }
    public class ListWordsView
    {
        public int CurrentPage { get; set; }
        public int PageCount { get; set; }
        public List<Words> Words { get; set; }
    }
}
