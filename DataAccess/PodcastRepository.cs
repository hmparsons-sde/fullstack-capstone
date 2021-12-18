using AspNetCoreVueStarter.Models;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.DataAccess
{
    public class PodcastRepository
    {
        string _connectionString;
        public PodcastRepository(IConfiguration config)
        {
            _connectionString = config.GetConnectionString("Poddammit");
        }
        internal IEnumerable<Podcast> GetAllPodcasts()
        {
            using var db = new SqlConnection(_connectionString);
            var sql = "select * from Podcasts";
            return db.Query<Podcast>(sql).ToList();
        }
        internal Podcast GetSinglePodcastById(Guid Id)
        {
            using var db = new SqlConnection(_connectionString);
            var singlePodcast = @"SELECT * FROM Podcasts WHERE Id = @Id";
            var Podcast = db.QuerySingleOrDefault<Podcast>(singlePodcast, new { id = Id });
            if (Podcast == null) return null;
            return Podcast;
        }
        internal object GetPodcastsByTitle(string Title)
        {
            using var db = new SqlConnection(_connectionString);

            string likeString = "%" + Title + "%";
            var PodcastTitle = @"SELECT * FROM Podcasts p WHERE p.Title LIKE @likeString";
            var PodcastReturn = db.Query<Podcast>(PodcastTitle, new { likeString = likeString });
            if (PodcastReturn == null) return null;
            return PodcastReturn;
        }
        internal List<Podcast> GetPodcastsByType(PodcastType Type)
        {
            using var db = new SqlConnection(_connectionString);
            var PodcastArray = db.Query<Podcast>(@"SELECT * from Podcasts WHERE Type = @Type", new { Type });
            return (List<Podcast>)PodcastArray;
        }
        internal List<Podcast> GetPodcastsByGenre(PodcastGenre Genre)
        {
            using var db = new SqlConnection(_connectionString);
            var PodcastArray = db.Query<Podcast>(@"SELECT * from Podcasts WHERE Genre = @Genre", new { Genre });
            return (List<Podcast>)PodcastArray;
        }
        public Podcast ShuffleShows()
        {
            using var db = new SqlConnection(_connectionString);
            var sql = @"select * from podcasts
                        Order by newId()";
            return db.QueryFirstOrDefault<Podcast>(sql);
        }
    }
}
