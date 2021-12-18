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
        public EpisodeController(EpisodeRepository repo)
        {
            _repo = repo;
        }

        [HttpGet]
        public IActionResult GetEpisodes()
        {
            return Ok(_repo.GetAllEpisodes());
        }
        [HttpGet("{Id}")]
        public IActionResult GetEpisodeById(Guid Id)
        {
            var episode = _repo.GetSingleEpisodeById(Id);

            if (episode == null)
            {
                return NotFound($"No Episode with {Id} was found.");
            }

            return Ok(episode);
        }
        [HttpGet("EpisodeTypes/{EpisodeType}")]
        public List<Episode> GetEpisodesByType(EpisodeType Type)
        {
            return _repo.GetEpisodesByType(Type);
        }
        [HttpGet("EpisodeName/{Title}")]
        public IActionResult GetEpisodeByTitle(string Title)
        {
            return Ok(_repo.GetEpisodesByTitle(Title));
        }
        [HttpGet("EpisodeGenres/{EpisodeGenres}")]
        public List<Episode> GetEpisodesByGenre(EpisodeGenre Genre)
        {
            return _repo.GetEpisodesByGenre(Genre);
        }
    }
}
