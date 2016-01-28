SCHEDULES = \
				extra/route1.pdf \
				extra/route2.pdf \
				extra/route3.pdf \
				extra/route4.pdf \
				extra/route5.pdf

schedules: $(SCHEDULES)
# .PHONY: clean all test publish

.PHONY: schedules

src/routes.js:
	echo "var wojt = wojt || {}" > src/routes.js
	echo "wojt.routes = {};" >> src/routes.js
	printf "wojt.routes.route1 = " >> src/routes.js
	cat data/route1.geojson >> src/routes.js
	printf ";wojt.routes.route2 = " >> src/routes.js
	cat data/route2.geojson >> src/routes.js
	printf ";wojt.routes.route3 = " >> src/routes.js
	cat data/route3.geojson >> src/routes.js
	printf ";wojt.routes.route4 = " >> src/routes.js
	cat data/route4.geojson >> src/routes.js
	printf ";wojt.routes.route5 = " >> src/routes.js
	cat data/route5.geojson >> src/routes.js

src/deps/leaflet.js:
	wget http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js -O src/deps/leaflet.js

src/deps/leaflet.css:
	wget http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.css -O src/deps/leaflet.css

extra/route1.pdf:
	wget http://www.westorange.org/DocumentCenter/View/720 -O extra/route1.pdf

extra/route2.pdf:
	wget http://www.westorange.org/DocumentCenter/View/721 -O extra/route2.pdf

extra/route3.pdf:
	wget http://www.westorange.org/DocumentCenter/View/722 -O extra/route3.pdf

extra/route4.pdf:
	wget http://www.westorange.org/DocumentCenter/View/724 -O extra/route4.pdf

extra/route5.pdf:
	wget http://www.westorange.org/DocumentCenter/View/1061 -O extra/route5.pdf
