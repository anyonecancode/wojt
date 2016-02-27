#!/usr/bin/env python
import re

with open('src/index.html', 'r') as index:
    HTML = index.read()


with open('src/deps/normalize.css', 'r') as ncss:
    CSS = ncss.read()

with open('src/deps/leaflet.css', 'r') as ncss:
    CSS += ncss.read()

with open('src/deps/leaflet.js', 'r') as njs:
    JS = njs.read()

with open('src/deps/routes.js', 'r') as njs:
    JS += njs.read()

with open('src/app.js', 'r') as njs:
    JS += njs.read()

HTML = re.sub(r"<link rel=\"stylesheet\".*", '', HTML)
HTML = re.sub(r"/\*{{CSS}}\*/", CSS, HTML)

HTML = re.sub(r"<script .*", '', HTML)
HTML = re.sub(r"<!--JS-->", "<script>" + JS + "</script>", HTML)

with open('dist/index.html', 'w') as dist:
    dist.write(HTML)
