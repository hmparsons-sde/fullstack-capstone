import axios from 'axios';
import localConfig from '../../localConfig';

const getPodcastsByName = (Title) => new Promise((resolve, reject) => {
  axios.get(`${config.baseUrl}/api/Podcasts/PodcastName/${Title}`)
    .then(response => resolve(response.data))
    .catch(error => reject(error));
});

export default getPodcastsByName;
