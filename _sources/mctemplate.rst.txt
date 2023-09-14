Template for minimal metadata for a Monte Carlo file
----------------------------------------------------

Here is an example of minimal metadata for a raw data file.

You can add additional information to the metadata object.

Metacat version
^^^^^^^^^^^^^^^

.. code-block:: javascript
  
   {
    "checksums": {
        "adler32": "c27f09b5"
        },
    "created_timestamp": 1691937037.698784,
    "creator": "dunepro",
    "fid": "0eUkJLB3SQOmlA9N",
    "metadata": {
        "art.file_format_era": "ART_2011a",
        "art.file_format_version": 15,
        "art.first_event": 9301,
        "art.last_event": 9400,
        "art.process_name": "Reco1",
        "art.run_type": "fardet-vd",
        "core.application": "art.reco",
        "core.application.family": "art",
        "core.application.name": "reco",
        "core.application.version": "v09_75_03d00",
        "core.data_stream": "out1",
        "core.data_tier": "hit-reconstructed",
        "core.end_time": 1691937015.0,
        "core.event_count": 100,
        "core.file_format": "artroot",
        "core.file_type": "mc",
        "core.first_event_number": 9301,
        "core.last_event_number": 9400,
        "core.run_type": "fardet-vd",
        "core.runs": [
            27279
        ],
        "core.runs_subruns": [
            2727900001
        ],
        "core.start_time": 1691936982.0,
        "dune.campaign": "fd_mc_2023a",
        "dune.requestid": "ritm1780305",
        "dune.workflow": {
            "cpuinfo": "AMD EPYC 7551P 32-Core Processor",
            "hostname": "hd80.dice.priv",
            "job_id": "27279.93@justin-prod-sched01.dune.hep.ac.uk",
            "jobscript_cpu_seconds": 37173,
            "jobscript_finish": 1691937022,
            "jobscript_real_seconds": 37212,
            "jobscript_start": 1691899809,
            "os_release": "Scientific Linux release 7.9 (Nitrogen)",
            "request_id": 1019,
            "site_name": "UK_Bristol",
            "stage_id": 1,
            "user": "amcnab@fnal.gov"
        },
        "dune_mc.beam_flux_id": "1",
        "dune_mc.beam_polarity": "rhc",
        "dune_mc.detector_type": "fardet-vd",
        "dune_mc.electron_lifetime": "10.4",
        "dune_mc.gen_fcl_filename": "prodgenie_anu_numu2nutau_nue2numu_dunevd10kt_1x8x6_3view_30deg.fcl",
        "dune_mc.generators": "genie",
        "dune_mc.generators_version": "3.04_00c",
        "dune_mc.geometry_version": "dunevd10kt_3view_30deg_v3_refactored_1x8x6ref.gdml",
        "dune_mc.liquid_flow": "no",
        "dune_mc.mixerconfig": "numu2nutau_nue2numu",
        "dune_mc.space_charge": "no",
        "dune_mc.with_cosmics": 0
    },
    "name": "anu_numu2nutau_nue2numu_dunevd10kt_1x8x6_3view_30deg_27279_93_20230813T041011Z_gen_g4_detsim_hitreco.root",
    "namespace": "fardet-vd",
    "retired": false,
    "retired_by": null,
    "retired_timestamp": null,
    "size": 1495285749,
    "updated_by": null,
    "updated_timestamp": 1691937037.698784
    }


samweb version
^^^^^^^^^^^^^^

.. code-block:: javascript

    {
    "file_name": "anu_numu2nutau_nue2numu_dunevd10kt_1x8x6_3view_30deg_27279_93_20230813T041011Z_gen_g4_detsim_hitreco.root",
    "file_id": 80035348,
    "create_date": "2023-08-14T12:26:26+00:00",
    "user": "dunepro",
    "file_size": 1495285749,
    "checksum": [
    "adler32:c27f09b5"
    ],
    "content_status": "good",
    "file_type": "mc",
    "file_format": "artroot",
    "group": "dune",
    "data_tier": "hit-reconstructed",
    "application": {
    "family": "art",
    "name": "reco",
    "version": "v09_75_03d00"
    },
    "event_count": 100,
    "first_event": 9301,
    "last_event": 9400,
    "start_time": "2023-08-13T14:29:42+00:00",
    "end_time": "2023-08-13T14:30:15+00:00",
    "data_stream": "out1",
    "DUNE.campaign": "fd_mc_2023a",
    "DUNE.requestid": "ritm1780305",
    "DUNE_MC.beam_flux_ID": 1,
    "DUNE_MC.beam_polarity": "rhc",
    "DUNE_MC.detector_type": "fardet-vd",
    "DUNE_MC.electron_lifetime": "10.4",
    "DUNE_MC.gen_fcl_filename": "prodgenie_anu_numu2nutau_nue2numu_dunevd10kt_1x8x6_3view_30deg.fcl",
    "DUNE_MC.generators": "genie",
    "DUNE_MC.generators_version": "3.04_00c",
    "DUNE_MC.geometry_version": "dunevd10kt_3view_30deg_v3_refactored_1x8x6ref.gdml",
    "DUNE_MC.liquid_flow": "no",
    "DUNE_MC.mixerconfig": "numu2nutau_nue2numu",
    "DUNE_MC.space_charge": "no",
    "DUNE_MC.with_cosmics": 0,
    "runs": [
    [
    27279,
    1,
    "fardet-vd"
    ]
    ]
    }
