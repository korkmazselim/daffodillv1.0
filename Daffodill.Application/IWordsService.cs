using Daffodill.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace Daffodill.Application
{
    public interface IWordsService
    {
        Words CreateNewWord(Words Words);
        ListWordsView GetWords(int PageNumber);
        Words GetRandomWord();
    }
}
