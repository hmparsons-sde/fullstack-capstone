using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Runtime.Serialization;
using System.Text.Json.Serialization;

namespace AspNetCoreVueStarter.Models
{
    public class Episode
    {
        public Guid Id { get; set; }

        [JsonConverter(typeof(JsonStringEnumConverter))]
        public EpisodeType Type { get; set; }

        [JsonConverter(typeof(JsonStringEnumConverter))]
        public EpisodeGenre Genre { get; set; }
        public string Description { get; set; }
        public string Audio { get; set; }
        public string Image { get; set; }
        public bool ExplicitContent { get; set; }
        public string Title { get;set;}
        public Guid PodcastId { get; set; }
    }

    public enum EpisodeGenre
    {
        TechNews,
        Documentary,
        Philosophy,
        Travel,
        TrueCrime,
        History,
        WeirdHistory,
        Books,
        Design,
        FashionBeauty,
        Food,
        PerformingArts,
        VisualArts,
        Careers,
        Entrepreneurship,
        Investing,
        Management,
        Marketing,
        NonProfit,
        ComedyInterviews,
        Improv,
        StandUp,
        Courses,
        HowTo,
        LanguageLearning,
        SelfImprovement,
        ComedyFiction,
        Drama,
        ScienceFiction,
        Government,
        MusicCommentary,
        MusicHistory,
        MusicInterviews,
        BusinessNews,
        DailyNews,
        EntertainmentNews,
        Politics,
        SportsNews,
        Journalism
    }

    public enum EpisodeType
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
