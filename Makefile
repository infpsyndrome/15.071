build/counties.json: build/countries_shp/countries.shp
	node_modules/.bin/topojson \
		-o $@ \
		--projection='width = 960, height = 600, d3.geo.naturalEarth() \
			.scale(1280) \
			.translate([width / 2, height / 2])' \
		--simplify=.5 \
#		-- counties=$<