{%- from "hovercraft/map.jinja" import server with context %}
{%- if server.enabled %}

hovercraft_packages:
  pkg.installed:
  - names: {{ server.pkgs }}

{%- endif %}
