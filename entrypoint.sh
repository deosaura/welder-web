#!/bin/bash

export API_URL=${API_URL:-}

# Rewrite config.json to point to the API URL
cd /welder/
sed -i "s,var welderApiHost=.*,var welderApiHost=\"$API_URL\";," ./public/js/config.js

# Launch welder-web using nginx
nginx -g "daemon off;"
