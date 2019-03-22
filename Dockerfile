FROM debian:stable-slim

LABEL "name"="regex-filter"
LABEL "maintainer"="Juan Karam <public.juan.karam@me.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Regex filter for GitHub Actions"
LABEL "com.github.actions.description"="Filter GitHub references (GITHUB_REF) using Regex"
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="http://github.com/juankaram/regex-filter"
LABEL "homepage"="http://github.com/juankaram/regex-filter"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"] 
