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
        public User GetSingleUserById(Guid UserId)
        {
            using var db = new SqlConnection(_connectionString);
            var singleUser = @"Select * from Users where userId = @UserId";
            var user = db.QuerySingleOrDefault<User>(singleUser, new { userId = UserId });
            if (user == null) return null;
            return user;
        }
        public User GetSingleUserByFBKey(string FirebaseKey)
        {
            using var db = new SqlConnection(_connectionString);
            var singleUser = @"Select * from Users where firebaseKey = @FirebaseKey";
            var user = db.QuerySingleOrDefault<User>(singleUser, new { firebaseKey = FirebaseKey });
            if (user == null) return null;
            return user;
        }
    }
}
