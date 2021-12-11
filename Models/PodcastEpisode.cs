using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Models
{
    public class PodcastEpisode
    {
        public Guid Id { get; set; }
        public Guid PodcastId { get; set; }
        public Guid EpisodeId { get; set; }
    }
}
