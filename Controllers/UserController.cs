using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AspNetCoreVueStarter.DataAccess;
using AspNetCoreVueStarter.Models;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;

namespace AspNetCoreVueStarter.Controllers
{
    [Route("api/Users")]
    [ApiController]

    public class UserController
    {
        UserRepository _repo;
        public UserController(UserRepository repo)
        {
            _repo = repo;
        }

        [HttpGet]
        public List<User> GetAllUsers()
        {
            return (List<User>)_repo.GetAll();
        }

        private IActionResult Ok(IEnumerable<User> enumerable)
        {
            throw new NotImplementedException();
        }
    }
}