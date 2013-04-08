circus:
  service.running:
    - require:
      - file: /etc/init/circus.conf
      - virtualenv: /var/virtualenvs/circus
      - file: /home/vagrant/helloworld/app.py
    - watch:
      - file: /etc/circus.ini

/var/virtualenvs/circus:
  virtualenv.managed:
    - no_site_packages: True
    - requirements: salt://circus/requirements.txt
    - require:
      - pkg: build-essential
      - pkg: python-pkgs

/etc/circus.ini:
  file.managed:
    - source: salt://circus/circus.ini

/etc/init/circus.conf:
  file.managed:
    - source: salt://circus/circus.conf
    - owner: root
    - group: root
    - mode: 644

build-essential: pkg.installed
