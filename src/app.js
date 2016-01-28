(function(L, wojt){
var map = L.map('map').setView([40.7650, -74.2529], 13);
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
        maxZoom: 18,
        id: 'pschwei1.onlge2d5',
        accessToken:
        'pk.eyJ1IjoicHNjaHdlaTEiLCJhIjoiY2lqamVwbGk1MDMwbXU2bTVvenJpcjhnMCJ9.9JVSSiHh0qHipMktVfnMQA',
        }).addTo(map);

var r1 = L.geoJson(wojt.routes.route1);
var r2 = L.geoJson(wojt.routes.route2);
var r3 = L.geoJson(wojt.routes.route3);
var r4 = L.geoJson(wojt.routes.route4);
var r5 = L.geoJson(wojt.routes.route5);

r1.addTo(map);
r2.addTo(map);
r3.addTo(map);
r4.addTo(map);
r5.addTo(map);

}(L, wojt));
