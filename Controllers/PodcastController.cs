using AspNetCoreVueStarter.DataAccess;
using AspNetCoreVueStarter.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Controllers
{
    [Route("api/Podcasts")]
    [ApiController]
    public class PodcastController : Controller
    {
        PodcastRepository _repo;
        public PodcastController()
        {
            _repo = new PodcastRepository();
        }

        [HttpGet]
        public List<Podcast> GetPodcasts()
        {
            return _repo.GetPodcasts();
        }
    }
}
