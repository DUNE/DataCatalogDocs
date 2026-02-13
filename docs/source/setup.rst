
Setting up metacat
==================
  

Get metacat started
-------------------

First find the documentation:

https://fermitools.github.io/metacat

metacat is a `ups` (SL7) and `spack` (AL9) product so you can get it by

(SL7)

.. code-block:: bash
    
  setup metacat

or (AL9)

.. code-block:: bash

  spack load metacat
  
but you can also do a local install using:

https://fermitools.github.io/metacat/en/latest/ui.html#installation

Make certain you can point to the metacat server:

.. code-block:: bash

   export METACAT_AUTH_SERVER_URL=https://metacat.fnal.gov:8143/auth/dune
   export METACAT_SERVER_URL=https://metacat.fnal.gov:9443/dune_meta_prod/app


Then authenticate to metacat using your FNAL username and services password:

.. code-block:: bash

  metacat auth login -m password $USER
  Password:
  User:    schellma
  Expires: Thu Oct 13 16:27:29 2022

See the `metacat documentation <https://fermitools.github.io/metacat/en/latest/ui.html#user-authentication>`_ for other authentication methods such as tokens.


