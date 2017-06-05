{% from "clustershell/map.jinja" import clustershell with context %}

clustershell:
  pkg.installed:
    - name: {{ clustershell.pkg }}
