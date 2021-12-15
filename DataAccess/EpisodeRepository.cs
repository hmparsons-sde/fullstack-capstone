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
        const string ConnectionString = "Server=localhost;Database=Poddammit;Trusted_Connection=True;TrustServerCertificate=True;";
        public List<Episode> GetAllEpisodes()
        {
            using var db = new SqlConnection(ConnectionString);
            var sql = "select * from episodes";
            return db.Query<Episode>(sql).ToList();
        }
    }
}
