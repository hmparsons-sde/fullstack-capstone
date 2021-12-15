using AspNetCoreVueStarter.Models;
using Dapper;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.DataAccess
{
    public class PlaylistRepository
    {
        const string ConnectionString = "Server=localhost;Database=Poddammit;Trusted_Connection=True;TrustServerCertificate=True;";
        public List<Playlist> GetPlaylists()
        {
            using var db = new SqlConnection(ConnectionString);
            var sql = "select * from Playlists";
            return db.Query<Playlist>(sql).ToList();
        }
    }
}
