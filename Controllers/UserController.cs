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

        //[HttpGet("{Id}")]
        //public IActionResult GetUserById(Guid UserId)
        //{
        //    var user = _repo.GetSingleUserById(UserId);

        //    //if (user == null)
        //    //{
        //    //    return NotFound($"No user with the id {UserId} was found.");
        //    //}

        //    return Ok((IEnumerable<User>)user);
        //}

        ////private IActionResult NotFound(string v)
        ////{
        ////    throw new NotImplementedException();
        ////}

        //[HttpGet("authedUsers/{FirebaseKey}")]
        //public IActionResult GetUserByFBKey(string FirebaseKey)
        //{
        //    var user = _repo.GetSingleUserByFBKey(FirebaseKey);

        //    //if (user == null)
        //    //{
        //    //    return NotFound($"No user with the id {FirebaseKey} was found.");
        //    //}

        //    return Ok((IEnumerable<User>)user);
        //}

        private IActionResult Ok(IEnumerable<User> enumerable)
        {
            throw new NotImplementedException();
        }
    }
}