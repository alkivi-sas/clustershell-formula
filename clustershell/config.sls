{% from "clustershell/map.jinja" import clustershell with context %}

include:
  - clustershell

clustershell.conf:
  file.managed:
    - name: {{ clustershell.config }}
    - source: salt://clustershell/templates/clush.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644

clustershell.groups.conf:
  file.managed:
    - name: {{ clustershell.groups_config }}
    - source: salt://clustershell/templates/groups.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644

clustershell.groups:
  file.managed:
    - name: {{ clustershell.groups }}
    - source: salt://clustershell/templates/groups.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
