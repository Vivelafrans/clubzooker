import "bootstrap";
import { runPage } from "../components/search_form"
import { initMapbox } from '../plugins/init_mapbox';
import { displayNext } from '../components/questionnaire';
initMapbox();
runPage();
if (window.location.pathname === '/questionaire') {
  displayNext();
}
