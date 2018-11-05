function weather -d "5-day weather forecast for Culver City"
	curl -s "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query=pws:KCACULVE3" | perl -ne 's/&amp;deg;/°/g;/<title>([^<]+)/&&printf "%s: ",$1;/<fcttext>([^<]+)/&&print $1,"\n"'
end
