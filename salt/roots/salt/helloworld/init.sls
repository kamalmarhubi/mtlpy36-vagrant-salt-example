/var/virtualenvs/helloworld:
  virtualenv.managed:
    - no_site_packages: True
    - requirements: salt://helloworld/requirements.txt
    - require:
      - pkg: python-pkgs

/home/vagrant/helloworld/app.py:
  file.managed:
    - source: salt://helloworld/app.py
