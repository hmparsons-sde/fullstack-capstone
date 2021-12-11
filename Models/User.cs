using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Models
{
    public class User
    {
        public Guid FirebaseKey { get; set; }
        public Guid Uid { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
