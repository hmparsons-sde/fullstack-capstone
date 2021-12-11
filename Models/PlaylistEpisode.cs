using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Models
{
    public class PlaylistEpisode
    {
        public Guid PlaylistId { get; set; }
        public Guid EpisodeId { get; set; }
    }
}
