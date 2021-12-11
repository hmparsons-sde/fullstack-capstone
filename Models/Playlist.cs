using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Models
{
    public class Playlist
    {
        public string Title { get; set; }
        public Guid UserId { get; set; }
        public string Type { get; set; }
        public int GenreId { get; set; }
        public bool ExplicitContent { get; set; }
        public Guid Id { get; set; }
        public Guid EpisodeId { get; set; }

    }
}
