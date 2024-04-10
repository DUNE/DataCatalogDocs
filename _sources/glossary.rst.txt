.. _glossary:

Glossary
--------

Incomplete list of keys used 


Minimal terms for raw data
^^^^^^^^^^^^^^^^^^^^^^^^^^

:name:  File name
:namespace: Metacat namespace for file 
:checksums: dictionary of checksums - adler32 is the default
:created_timestamp: Unix timestamp for when file was cataloged
:creator: account that created the file
:size: size in bytes
:fid: hash-name for the file - equivalent to namespace:name

:retired: has this file been retired?
:retired_by: who did it? 
:retired_timestamp: when was it retired
:updated_by: who has updated this catalog entry?
:updated_timestamp: when did they do it? 



:metadata: description of file contents with this content

:core.application.family: high level application description (art, edep-sim, art-daq)
:core.application.name: specific application name
:core.application.version: version of code
:core.data_stream: type of data taking (commissioning, calibration, test, physics, cosmics)
:core.data_tier: type of data (raw, g4, )
:core.end_time: time at which the process that created the file ended
:core.event_count: number of events in the file 
:core.events: [list of events in the file],
:core.file_content_status: status of the file - default is good
:core.file_format: format of the data (hdf5, root)
:core.file_type: flag to tell mc from data, (detector or mc)
:core.first_event_number:  first event number
:core.last_event_number:  last event number
:core.run_type: which detector took the data "protodune-sp, hd-fardet ..."
:core.runs: [list of runs]
:core.runs_subruns: [list of subruns in run*100000+subrun format]
:core.start_time: time at which the process that created the file started
:dune.daq_test:  True / False  True if this is a Test run, False otherwise--np04 only.
:retention.status: flag to tell if the file is being used and should be retained
:retention.class: flag used to determine retention status (physics, test,  ...)


Additional terms used for reconstruction and simulation 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:parents:  The files that this file was produced from 
:children: list of files that are derived from this file

:dune.campaign:  A big scale activity used for production - examples are PDSPProd4a and fd_mc_2023a_reco2
:dune.requestid: The formal request id for the campaign in the system
:dune.config_file:  The top level configuration used to produce this file 
:dune.workflow: a description of the workflow that produced this file 
:dune.output_status: this should be confirmed - this tells you that the output exists

:dune_mc.gen_fcl_filename: tells you the generator fcl file so you know what kind of mc it is. 


