
{%- from "hovercraft/map.jinja" import server with context %}
{%- if server.enabled %}

/srv/hovercraft/sites:
  file.directory:
  - mode: 755
  - makedirs: true

{%- for slides_name, slides in server.slides.iteritems() %}

/srv/hovercraft/sites/{{ doc_name }}:
  file.directory:
  - mode: 755
  - makedirs: true
  - require:
    - file: /srv/hovercraft/sites

hovercraft_{{ slides_name }}:
  pip.installed:
  - process_dependency_links: True
  - pre_releases: True
  - name: hovercraft
  - bin_env: /srv/hovercraft/sites/{{ slides_name }}
  - require:
    - virtualenv: /srv/hovercraft/sites/{{ slides_name }}

hovercraft_{{ slides_name }}_slides_source:
  git.latest:
  - name: {{ slides.source.address }}
  - rev: {{ slides.source.get('rev', 'master') }}
  - target: /srv/hovercraft/sites/{{ slides_name }}

build_{{ slides_name }}:
  cmd.run:
  - names:
    - source /srv/hovercraft/sites/{{ slides_name }}/bin/activate
    - sh /srv/hovercraft/sites/{{ slides_name }}/make.sh
  - cwd: /srv/leonardo/sites/{{ app_name }}

{%- endfor %}

{%- endif %}
