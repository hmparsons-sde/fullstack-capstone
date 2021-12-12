using AspNetCoreVueStarter.Models;
using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.DataAccess
{
    public class UserRepository
    {
        static List<User> _users = new List<User>();
        readonly string _connectionString;
        public UserRepository(IConfiguration config)
        {
            _connectionString = config.GetConnectionString("Poddammit");
        }
        internal IEnumerable<User> GetAll()
        {
            //var uid = FirebaseUid();
            using var db = new SqlConnection(_connectionString);
            var users = db.Query<User>(@"select * from Users");
            return users;
        }
    }
}
