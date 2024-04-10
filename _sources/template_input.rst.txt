Template for minimal metadata for a raw data file
-------------------------------------------------

Here is an example of minimal metadata for a raw data file.
This has been revised to show what an input metacat-native
file should look like. 

Some fields are auto-genenerated and documented under additional informatiob below

See the :ref:`glossary` for the definition of the keys. 

Note that all keys must now be lower case. 

Times need to be Float seconds.milliseconds past the epoch

You can add additional information to the metadata object.
Any additional core.* attributes that are added require code changes to
the Declaration Daemon.  
Any additional attributes added to other existing categories require notification
so we can back-declare them to SAM.
Any new categories require approval from admin.
ProtoDUNE NP04 can't generate core.application.* they are excused from doing that.
Minerva is allowed to add core.group, core.lum_block_ranges, misc.file_partition, online.triggerconfig, online.triggertype

Metacat version
^^^^^^^^^^^^^^^

.. code-block:: javascript

  {
      "name": "np04_raw_run005141_0015_dl3.root",
      "namespace": "protodune-sp",
      "checksums": {
          "adler32": "0e94618d"
      },
      "size": 8289321123,
      "metadata": {
          "core.application.family": "art",
          "core.application.name": "dune-artdaq",
          "core.application.version": "v1_16_00b",
          "core.data_stream": "physics",
          "core.data_tier": "raw",
          "core.end_time": 1539193107.0,
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
          "core.start_time": 1539193107.0,
          "dune.daq_test": "True",
          "retention.status": "active",
          "retention.class": "physics"
      },

  }

Minerva version
^^^^^^^^^^^^^^^

.. code-block:: javascript

  {
    "checksums": {
        "adler32": "e854e667"
    },
    "created_timestamp": 1691170423.961402,
    "metadata": {
        "core.data_stream": "pdstl",
        "core.data_tier": "binary-raw",
        "core.end_time": 1690992518,
        "core.event_count": 100,
        "core.file_format": "binary",
        "core.file_type": "importedDetector",
        "core.first_event_number": 4592941,
        "core.group": "minerva",
        "core.last_event_number": 4593040,
        "core.lum_block_ranges": [
            [
                4592941,
                4593040
            ]
        ],
        "core.run_type": "neardet-2x2-minerva",
        "core.runs": [
            40074
        ],
        "core.runs_subruns": [
            4007400001
        ],
        "core.start_time": 1690992515,
        "dune.daq_test": "True",
        "misc.file_partition": 1,
        "online.triggerconfig": "NOFILE",
        "online.triggertype": "oneshot",
        "retention.status": "active",
        "retention.class": "commissioning"
    },
    "name": "TS1_00040074_0001_pdstl_v09_2308021608_RawData.dat",
    "namespace": "neardet-2x2-minerva",
    "size": 10543808

  }

Additional information
^^^^^^^^^^^^^^^^^^^^^^

  This information is added later to track changes
  Values for all of these are added automatically at time of creation and
  they can not be added at file creation time or modified via a json file.


  .. code-block:: javascript

      {"created_timestamp": 1539193107.681780,
       "creator": "dunepro",
       "retired": false,
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



