# West Orange Jitney Map

The jitney service that West Orange provides to and from the local train stations is really great.
However, I find the maps and schedules on the [township website](http://www.westorange.org/index.aspx?nid=595)
a bit confusing and difficult to read.

This is my attempt to improve that and contribute back to the community; hopefully others find this
useful.

If you'd like to contribute, please open an issue or, better yet, a pull request.

For the schedules, I just manually copied the information from the township into HTML tables. The
CSS uses [normalize.css](https://necolas.github.io/normalize.css/3.0.3/normalize.css) as a reset
and, though it doesn't make use of it directly, uses [bootstrap](http://getbootstrap.com/) as an
inspiration.

For the map, I added the routes into [Open Streetmap](http://openstreetmap.org) (OSM), then exported them
as geojson via the [Overpass API](http://overpass-turbo.eu/). For a mapping library, I'm using
[Leaflet](http://leafletjs.com/), with tiles via [Mapbox](http://mapbox.com/), and I used
[Color Brewer](http://colorbrewer2.org/) in color coding the routes.

I struggled a bit getting the routes into OSM -- some routes take slightly different routes in the
morning vs the evening, or the township documentations indicate that they go "via" another route.
I'm especially interested in any suggestions for how to display this - as well, of course, for any
corrections to times or routing I got wrong.
