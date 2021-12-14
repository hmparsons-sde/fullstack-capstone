using AspNetCoreVueStarter.DataAccess;
using AspNetCoreVueStarter.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Controllers
{
    [Route("api/Episodes")]
    [ApiController]
    public class EpisodeController : Controller
    {
        EpisodeRepository _repo;
        public EpisodeController()
        {
            _repo = new EpisodeRepository();
        }

        [HttpGet]
        public List<Episode> GetEpisodes()
        {
            return _repo.GetAllEpisodes();
        }
    }
}
