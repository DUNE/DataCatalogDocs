Information that should probably go into a runs database
--------------------------------------------------------

February 27, 2023 HMS

This is data found in the file data for protoDUNE run 1 that would be good candidates to go into a runs condition database for Run II

.. code-block:: json

    {
      "run_number":XXXX,  # key
      "file_type": "detector", # key
      "run_type":"protodune-sp", # key
      "event_count": 136,  # get from RC - total events from run
      "first_event": 24406,  # do we need this
      "last_event": 26038,  # do we need this
      "start_time": "2018-10-17T19:45:47+00:00",
      "end_time": "2018-10-17T19:56:50+00:00",
      "purpose": ???
      "artdaq-core.timestamp": "11-Oct-2018-22:06:58-UTC",
      "artdaq-core.version": "v3_04_02",
      "artdaq.timestamp": "11-Oct-2018-22:07:02-UTC",
      "artdaq.version": "v3_03_00_beta",
      "beam.momentum": 1.0,
      "data_quality.online_good_run_list": 1,
      "detector.hv_value": 180,
      "dune-artdaq.timestamp": "11-Oct-2018-22:06:51-UTC",
      "dune-artdaq.version": "v1_16_00b",
      "dune-raw-data.timestamp": "11-Oct-2018-22:06:48-UTC",
      "dune-raw-data.version": "v1_17_06a",
      "DUNE_data.acCouple": 0,
      "DUNE_data.calibpulsemode": 0,
      "DUNE_data.DAQConfigName": "np04_WibsReal_Ssps_BeamTrig1GeV_00011",
      "DUNE_data.detector_config": "..  long list of configured readout boards ...",
      "DUNE_data.febaselineHigh": 1,
      "DUNE_data.fegain": 2,
      "DUNE_data.feleak10x": 0,
      "DUNE_data.feleakHigh": 1,
      "DUNE_data.feshapingtime": 2,
      "DUNE_data.inconsistent_hw_config": 0,
      "DUNE_data.is_fake_data": 0,
      "subruns":[],
      "beam spills":[]
    }
