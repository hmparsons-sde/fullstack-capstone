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
        public PodcastController(PodcastRepository repo)
        {
            _repo = repo;
        }

        [HttpGet]
        public IActionResult GetPodcasts()
        {
            return Ok(_repo.GetAllPodcasts());
        }
        [HttpGet("{Id}")]
        public IActionResult GetPodcastById(Guid Id)
        {
            var Podcast = _repo.GetSinglePodcastById(Id);

            if (Podcast == null)
            {
                return NotFound($"No Podcast with {Id} was found.");
            }

            return Ok(Podcast);
        }
        [HttpGet("PodcastTypes/{PodcastType}")]
        public List<Podcast> GetPodcastsByType(PodcastType Type)
        {
            return _repo.GetPodcastsByType(Type);
        }
        [HttpGet("PodcastName/{Title}")]
        public IActionResult GetPodcastByTitle(string Title)
        {
            return Ok(_repo.GetPodcastsByTitle(Title));
        }
        [HttpGet("PodcastGenres/{PodcastGenres}")]
        public List<Podcast> GetPodcastsByGenre(PodcastGenre Genre)
        {
            return _repo.GetPodcastsByGenre(Genre);
        }
        [HttpGet("random/")]
        public IActionResult GetRandomShow()
        {
            var randomSh = _repo.ShuffleShows();

            return Ok(randomSh);
        }
    }
}