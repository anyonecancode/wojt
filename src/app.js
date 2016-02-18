(function(L, wojt){
var map = L.map('map').setView([40.7690, -74.2640], 13);
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
        maxZoom: 18,
        id: 'pschwei1.onlge2d5',
        accessToken:
        'pk.eyJ1IjoicHNjaHdlaTEiLCJhIjoiY2lqamVwbGk1MDMwbXU2bTVvenJpcjhnMCJ9.9JVSSiHh0qHipMktVfnMQA',
        }).addTo(map);

wojt.r1 = L.geoJson(wojt.routes.route1);
wojt.r2 = L.geoJson(wojt.routes.route2);
wojt.r3 = L.geoJson(wojt.routes.route3);
wojt.r4 = L.geoJson(wojt.routes.route4);
wojt.r5 = L.geoJson(wojt.routes.route5);

wojt.r1.addTo(map).setStyle({'color':'#e41a1c'});
wojt.r2.addTo(map).setStyle({'color':'#377eb8'});
wojt.r3.addTo(map).setStyle({'color':'#4daf4a'});
wojt.r4.addTo(map).setStyle({'color':'#984ea3'});
wojt.r5.addTo(map).setStyle({'color':'#ff7f00'});

var destStyles = {
  color: 'rgb(252, 78, 42)',
  fillOpacity: 0.5
};
//color: 'rgb(254, 153, 41)',
  //color: 'rgb(166, 54, 3)',
wojt.destinations = {};
wojt.destinations.SOrange = L.circle([40.74622, -74.26050], 100, destStyles).addTo(map);
wojt.destinations.Mountain = L.circle([40.75543, -74.25273], 100, destStyles).addTo(map);
wojt.destinations.Orange = L.circle([40.77186, -74.23313], 100, destStyles).addTo(map);

var scheduleToggles = Array.from(document.querySelectorAll('.schedules a'));

function toggleHide(event) {
  var section = event.target.parentElement.parentElement,
    newClass;

  newClass = section.classList.contains('schedulesHidden')?
    section.className.replace(/Hidden/g , 'Shown') :
    section.className.replace(/Shown/ , 'Hidden');

  section.className = newClass;
}

scheduleToggles.forEach(function(toggle) {
  toggle.addEventListener('click', toggleHide);
});

}(L, wojt));
//http://colorbrewer2.org/?type=qualitative&scheme=Set1&n=5
