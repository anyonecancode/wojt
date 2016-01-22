(function(){
var map = L.map('map').setView([40.7650, -74.2529], 13);
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
        maxZoom: 18,
        id: 'pschwei1.onlge2d5',
        accessToken:
        'pk.eyJ1IjoicHNjaHdlaTEiLCJhIjoiY2lqamVwbGk1MDMwbXU2bTVvenJpcjhnMCJ9.9JVSSiHh0qHipMktVfnMQA',
        }).addTo(map);

}());
