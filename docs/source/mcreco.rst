Reconstructed MC File Example
-----------------------------

This is from recent simulation of the FD - here are some additional fields for derived files 


.. code-block:: javascript

    "parents": [
            {
                "fid": "80286097",
                "name": "nu_dune10kt_1x2x6_1427_768_20230827T213411Z_gen_g4_detsim_hitreco.root",
                "namespace": "fardet-hd"
            }
        ]


    "children": [
            {
                "fid": "n8OUCNB8Rz6Gb9uS",
                "name": "nu_dune10kt_1x2x6_1427_768_20230827T213411Z_gen_g4_detsim_hitreco__20240405T212128Z_reco2_ana.root",
                "namespace": "fardet-hd"
            }
        ]


    "dune.workflow": {
                "cpuinfo": "AMD EPYC 7763 64-Core Processor",
                "hostname": "heplnc164.pp.rl.ac.uk",
                "job_id": "189271.98@justin-prod-sched01.dune.hep.ac.uk",
                "jobscript_cpu_seconds": 3743,
                "jobscript_finish": 1712356520,
                "jobscript_real_seconds": 4439,
                "jobscript_start": 1712352080,
                "os_release": "Scientific Linux release 7.9 (Nitrogen)",
                "site_name": "UK_RAL-PPD",
                "stage_id": 1,
                "user": "benjamin@fnal.gov",
                "workflow_id": 1769
            }

metacat
=======

`metacat file show -l -m -j fardet-hd:nu_dune10kt_1x2x6_1427_768_20230827T213411Z_gen_g4_detsim_hitreco__20240405T212128Z_reco2.root`

.. include:: fardet-hd.json
   :literal:




