import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';


initMapbox();

// Initialiying all tooltips
$('*[data-toggle="tooltip"]').tooltip();
