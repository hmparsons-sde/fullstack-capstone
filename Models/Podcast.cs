using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Models
{
    public class Podcast
    {
        public Guid Id { get; set; }
        public string Image { get; set; }
        public string Title { get; set; }
        public PodcastType Type { get; set; }
        public PodcastGenre Genre { get; set; }
        public double ListenScore { get; set; }
        public int TotalEpisodes { get; set; }
        public bool ExplicitContent { get; set; }
    }
    public enum PodcastGenre
    {
        TechNews,
        Documentary,
        Philosophy,
        Travel,
        TrueCrime,
        History,
    }

    public enum PodcastType
    {
        Serial,
        Interview,
        Conversational,
        Panel,
        Theater,
        Improv,
        Monologue,
        Investigative
    }
}