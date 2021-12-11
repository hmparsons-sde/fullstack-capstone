using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Models
{
    public class Episode
    {
        public Guid Id { get; set; }
        public string Type { get; set; }
        public int GenreId { get; set; }
        public string Audio { get; set; }
        public string Image { get; set; }
        public bool ExplicitContent { get; set; }
        public int PubDateMs { get; set; }
        public int Podcast { get; set; }
    }
}
