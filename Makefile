.PHONY: clean all schedules dist deps

SCHEDULES = \
				extra/route1.pdf \
				extra/route2.pdf \
				extra/route3.pdf \
				extra/route4.pdf \
				extra/route5.pdf

DEPS = \
			 src/deps/normalize.css \
			 src/deps/routes.js \
			 src/deps/leaflet.js \
			 src/deps/leaflet.css

GEOJSON = \
					data/route1.geojson \
					data/route2.geojson \
					data/route3.geojson \
					data/route4.geojson \
					data/route5.geojson

all: $(DEPS) $(SCHEDULES)

deps: $(DEPS)

schedules: $(SCHEDULES)

src/deps/normalize.css:
	wget https://necolas.github.io/normalize.css/3.0.3/normalize.css -O src/deps/normalize.css

src/deps/routes.js: $(GEOJSON)
	echo "var wojt = wojt || {}" > src/deps/routes.js
	echo "wojt.routes = {};" >> src/deps/routes.js
	printf "wojt.routes.route1 = " >> src/deps/routes.js
	cat data/route1.geojson >> src/deps/routes.js
	printf ";wojt.routes.route2 = " >> src/deps/routes.js
	cat data/route2.geojson >> src/deps/routes.js
	printf ";wojt.routes.route3 = " >> src/deps/routes.js
	cat data/route3.geojson >> src/deps/routes.js
	printf ";wojt.routes.route4 = " >> src/deps/routes.js
	cat data/route4.geojson >> src/deps/routes.js
	printf ";wojt.routes.route5 = " >> src/deps/routes.js
	cat data/route5.geojson >> src/deps/routes.js

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

clean:
	rm extra/*
	rm src/deps/*
