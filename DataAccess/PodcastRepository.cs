using AspNetCoreVueStarter.Models;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.DataAccess
{
    public class PodcastRepository
    {
        const string ConnectionString = "Server=localhost;Database=Poddammit;Trusted_Connection=True;TrustServerCertificate=True;";
        public List<Podcast> GetPodcasts()
        {
            using var db = new SqlConnection(ConnectionString);
            var sql = "select * from podcasts";
            return db.Query<Podcast>(sql).ToList();
        }
    }
}
