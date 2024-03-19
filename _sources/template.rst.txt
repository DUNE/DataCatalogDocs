Template for minimal metadata for a file
----------------------------------------

Here is an example of minimal metadata for a raw data file.

Note that all keys must now be lower case. 

Times need to be UTC.

You can add additional information to the metadata object.

Metacat version
^^^^^^^^^^^^^^^

.. code-block:: javascript

  {
      "name": "np04_raw_run005141_0015_dl3.root",
      "namespace": "protodune-sp",
      "checksums": {
          "adler32": "0e94618d"
      },
      "created_timestamp": 2018-10-10 17:38:27.681780+00:00,
      "creator": "dunepro",
      "size": 8289321123,
      "retired": false,
      "retired_by": null,
      "retired_timestamp": null,
      "updated_by": null,
      "updated_timestamp": null
      "metadata": {
          "core.application.family": "art",
          "core.application.name": "dune-artdaq",
          "core.application.version": "v1_16_00b",
          "core.data_stream": "physics",
          "core.data_tier": "raw",
          "core.end_time": "2018-10-10 17:38:27.681780+00:00",
          "core.event_count": 108,
          "core.events": [1,2,3,4],
          "core.file_content_status": "good",
          "core.file_format": "hdf5",
          "core.file_type": "detector",
          "core.first_event_number": 20921,
          "core.last_event_number": 22349,
          "core.run_type": "protodune-sp",
          "core.runs": [
              5141
          ],
          "core.runs_subruns": [
              514100001
          ],
          "core.start_time": "2018-10-10 17:38:27.681780+00:00",
          "retention.status": "active",
          "retention.class": "physics"
      },

  }

Additional information
^^^^^^^^^^^^^^^^^^^^^^

  This information is added later to track changes

  .. code-block:: javascript

      {"retired": false,
      "retired_by": null,
      "retired_timestamp": null,
      "updated_by": null,
      "updated_timestamp": null
      }



Samweb version
^^^^^^^^^^^^^^

.. code-block:: javascript

  {
   "file_name": "filename",
   "file_id": 6607416,
   "create_date": "2018-10-10T17:38:27+00:00",
   "user": "dunepro",
   "file_size": 8289321123,
   "checksum": [ "adler32:0e94618d"],
   "content_status": "good",
   "file_type": "detector",
   "file_format": "root",
   "data_tier": "raw",
   "data_stream": "physics",
   "application": {
      "family": "art",
      "name": "dune-artdaq",
      "version": "v1_16_00b"
   },
   "event_count": 108,
   "first_event": 20921,
   "last_event": 22349,
   "start_time": "2018-10-10T17:25:01+00:00",
   "end_time": "2018-10-10T17:32:16+00:00",
   "runs": [ [ 5141, 1, "protodune-sp" ] ]
  }


Glossary
========


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

