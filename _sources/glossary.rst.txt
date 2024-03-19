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
:metadata: description of file contents with this content

:core.application.family: high level application description (art, edep-sim, art-daq)
:core.application.name: specific application name
:core.application.version: version of code
:core.data_stream: type of data taking (commissioning, calibration, test, physics, cosmics)
:core.data_tier: type of data (raw, g4, )
:core.end_time: time at which the process that created the file ended
:core.event_count: number of events in the file 
:core.events: [list of events in the file],
:core.file_content_status: status of the file - should be good 
:core.file_format: format of the data (hdf5, root)
:core.file_type: flag to tell mc from data, (detector or mc)
:core.first_event_number:  first event number
:core.last_event_number:  last event number
:core.run_type: which detector took the data "protodune-sp, hd-fardet ..."
:core.runs: [list of runs]
:core.runs_subruns: [list of subruns in run*100000+subrun format]
:core.start_time: time at which the process that created the file started
:retention.status: flag to tell if the file is being used and should be retained
:retention.class: flag used to determine retention status (physics, test,  ...)
