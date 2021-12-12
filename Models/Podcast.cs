using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Models
{
    public class Podcast
    {
        public Guid Id { get; set; }
        public string Audio { get; set; }
        public string Image { get; set; }
        public string Title { get; set; }
        public string Type { get; set; }
        public int GenreIds { get; set; }
        public string Thumbnail { get; set; }
        public double ListenScore { get; set; }
        public int TotalEpisodes { get; set; }
        public bool ExplicitContent { get; set; }
        public int Episodes { get; set; }
    }
}