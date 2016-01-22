SCHEDULES = \
				extra/route1.pdf \
				extra/route2.pdf \
				extra/route3.pdf \
				extra/route4.pdf \
				extra/route5.pdf

schedules: $(SCHEDULES)
# .PHONY: clean all test publish

src/deps/leaflet.js:
	wget http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js -O src/deps/leaflet.js

src/deps/leaflet.css:
	wget http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.css -O src/deps/leaflet.css

.PHONY: schedules

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
