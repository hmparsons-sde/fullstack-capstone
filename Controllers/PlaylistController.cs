using AspNetCoreVueStarter.DataAccess;
using AspNetCoreVueStarter.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetCoreVueStarter.Controllers
{
    [Route("api/Playlists")]
    [ApiController]
    public class PlaylistController : Controller
    {
        PlaylistRepository _repo;
        public PlaylistController()
        {
            _repo = new PlaylistRepository();
        }

        [HttpGet]
        public List<Playlist> GetPlaylists()
        {
            return _repo.GetPlaylists();
        }
    }
}
