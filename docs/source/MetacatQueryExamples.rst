
Metacat Query examples  
======================


  This document includes examples of `metacat` queries

Example: Get the raw data from given protodune-sp detector runs
---------------------------------------------------------------


* metacat

   .. code-block:: bash

      metacat query "files from dune:all where core.file_type=detector \
       and core.run_type='protodune-sp' and core.data_tier=raw \
       and core.data_stream=physics and core.runs[any] in (5141,5143)"

  add `--summary` or `-s` after query if you want just the # of files

  *Notes:*

 

  - *things run faster if you ask for files from a known dataset like `dune:all`*

  - *core.runs[any] means check any of the runs associated with the file for being 5141*

  - *core.runs[any] in (5141, 5142, 5147) - any of these 3 runs*

  - *core.runs[any] = 5141- single run, equivalent: 5141 in core.runs*

  - *5141 in core.runs* also works

  - *you can ask for multiple runs by using the `in (X,Y)` syntax*

Example: Save a dataset or definition query
-------------------------------------------

If you are interested in everything physics from `protodune-sp`, you might want to save a generic dataset or query which you can then reuse in further filtered queries.  Then as you narrow thing down you can build additional datasets.


* metacat

  To run a MQL query and create a new dataset with the query results:

   .. code-block:: bash

    metacat dataset create -f "files from dune:all where \
    ..." <dataset_namespace>:<dataset_name>

   .. code-block:: bash

    metacat dataset create -f @file_with_mql_query.txt \
    <dataset_namespace>:<dataset_name> <dataset description>

  You likely need to ask for your own namespace or use namespace `usertests`.

  To run a query and add matching files to an existing dataset:

  .. code-block:: bash

    metacat dataset add-files -q "files from dune:all where ..." <dataset_namespace>:<dataset_name>

    metacat dataset add-files -q @file_with_mql_query.txt <dataset_namespace>:<dataset_name>

  .. Note: this times out if all runs are included - I just did 5141 for this test.

  .. Note: Todo: a utility command that logs the query in the dataset metadata, possibly not in the "description" field

  check it by querying the files in the dataset

  .. code-block:: bash

    metacat query -s "files from schellma:protodune-sp-physics-generic"

    metacat dataset show schellma:protodune-sp-physics-generic

    children                 :
    created_timestamp        : 2022-10-08 11:41:54
    creator                  : schellma
    description              : files from dune:all where core.file_type=detector and core.run_type='protodune-sp' and core.data_stream=physics
    file_count               : 772631
    file_meta_requirements   : {}
    frozen                   : False
    metadata                 : {}
    monotonic                : False
    name                     : protodune-sp-physics-generic
    namespace                : schellma
    parents                  :


  .. :Note: I have not saved the query in the metacat dataset but just added it as an optional description. I have saved the list of files.  In `metacat` datasets do not change (for example if another file passing the query requirements comes in from the DAQ) until you explicitly add the new file.*

  You can then ask for the subset from a particular data tier and run number.

  .. code-block:: bash

    metacat query "files from schellma:protodune-sp-physics-generic \
    where core.runs[all]=5141 and core.data_tier=raw"

Find only the files not processed with a version of code
--------------------------------------------------------


* metacat


  .. code-block:: bash

    metacat query -s "files from schellma:protodune-sp-physics-generic \
    where core.data_tier=raw and 5141 in core.runs -  parents(files \
    from schellma:protodune-sp-physics-generic where 5141 in core.runs \
    and core.data_tier='full-reconstructed' and core.application.version~'v08_27_.*')"

    12 files

  .. :Note: TODO - get the file size as well?

  .. :Note: the syntax for a parameter matching is Regular Expressions, in particular '.\*' matches any string*
