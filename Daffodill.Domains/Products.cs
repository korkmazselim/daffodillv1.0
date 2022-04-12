using System;
using System.Collections.Generic;
using System.Text;
using URF.Core.EF.Trackable;

namespace Daffodill.Domain
{
    public class Products:Entity
    {
        public int Id { get; set; }
        public string ProductName { get; set; }
    }
}
