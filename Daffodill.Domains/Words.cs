using System;
using System.Collections.Generic;
using System.Text;
using URF.Core.EF.Trackable;

namespace Daffodill.Domain
{
    public class Words:Entity
    {
        public int Id { get; set; }
        public string English { get; set; }
        public WordLabel WordLabel { get; set; }
        public string WordNote { get; set; }
        public DateTime CreatedDate { get; set; }
        public int ViewCount { get; set; }
        public DateTime LastViewedDate { get; set; }
        public bool Priority { get; set; }
        public virtual ICollection<WordsMeanings> WordsMeanings { get; set; }
    }
    public enum WordLabel
    {
        Noun = 1,
        Adjective = 2,
        Verb = 3
    }
    public class WordsMeanings : Entity
    {
        public int Id { get; set; }
        public string Meaning { get; set; }
        public string Description { get; set; }
        public int WordsId { get; set; }
        public virtual Words Words { get; set; }
        public virtual ICollection<WordsExamples> WordsExamples { get; set; }
    }
    public class WordsExamples:Entity
    {
        public int Id { get; set; }
        public string Example { get; set; }
        public string ExampleNote { get; set; }
        public int WordsMeaningsId { get; set; }
        public virtual WordsMeanings WordsMeanings { get; set; }
    }
}
