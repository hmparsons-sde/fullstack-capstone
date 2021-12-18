using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AspNetCoreVueStarter.Models;
using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace AspNetCoreVueStarter.DataAccess
{
    public class EpisodeRepository
    {
        string _connectionString;
        public EpisodeRepository(IConfiguration config)
        {
            _connectionString = config.GetConnectionString("Poddammit");
        }
        internal IEnumerable<Episode> GetAllEpisodes()
        {
            using var db = new SqlConnection(_connectionString);
            var sql = "select * from episodes";
            return db.Query<Episode>(sql).ToList();
        }
        internal Episode GetSingleEpisodeById(Guid Id)
        {
            using var db = new SqlConnection(_connectionString);
            var singleEpisode = @"SELECT * FROM Episodes WHERE Id = @Id";
            var episode = db.QuerySingleOrDefault<Episode>(singleEpisode, new { id = Id });
            if (episode == null) return null;
            return episode;
        }
        internal object GetEpisodesByTitle(string Title)
        {
            using var db = new SqlConnection(_connectionString);

            string likeString = "%" + Title + "%";
            var episodeTitle = @"SELECT * FROM episodes e WHERE e.Description LIKE @likeString";
            var episodeReturn = db.Query<Episode>(episodeTitle, new { likeString = likeString});
            if (episodeReturn == null) return null;
            return episodeReturn;
        }
        internal List<Episode> GetEpisodesByType(EpisodeType Type)
        {
            using var db = new SqlConnection(_connectionString);
            var episodeArray = db.Query<Episode>(@"SELECT * from Episodes WHERE Type = @Type", new { Type });
            return (List<Episode>)episodeArray;
        }
        internal List<Episode> GetEpisodesByGenre(EpisodeGenre Genre)
        {
            using var db = new SqlConnection(_connectionString);
            var episodeArray = db.Query<Episode>(@"SELECT * from Episodes WHERE Genre = @Genre", new { Genre });
            return (List<Episode>)episodeArray;
        }
        public Episode ShuffleEpisodes()
        {
            using var db = new SqlConnection(_connectionString);
            var sql = @"select * from episodes
                        Order by newId()";
            return db.QueryFirstOrDefault<Episode>(sql);
        }
    }
}
