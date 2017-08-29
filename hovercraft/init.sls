
include:
{% if pillar.hovercraft is defined %}
{% if pillar.hovercraft.server is defined %}
- hovercraft.server
{% endif %}
{% endif %}
