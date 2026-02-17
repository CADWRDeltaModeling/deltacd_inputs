@ECHO OFF

ECHO Activating conda environment and run deltacd for Planning.

:: Activate the deltacd conda environment
call ..\..\deltacd\Scripts\activate.bat

conda-unpack

ECHO:
ECHO Running Detaw
:: Run the detaw script
detaw .\detaw_calsim3.yaml

ECHO:
ECHO Running DCD for Calsim3
:: Run the dcd script
dcd .\dcd_calsim3.yaml

ECHO:
ECHO Running DCD for DSM2 Planning
:: Run the dcd script for DSM2 Planning
dcd .\dcd_dsm2_planning.yaml

ECHO:
ECHO Converting Div, Drain, Seep Calsim3 netcdf output to dss format.
:: Run the calsim3 to dss conversion script
deltacd2calsim3 .\divdrainseep2dss.yaml

ECHO:
ECHO Converting GW, DP Calsim3 netcdf output to dss format.
:: Run the calsim3 to dss conversion script
deltacd2calsim3 .\gwdp2dss.yaml

ECHO:
ECHO Converting Div, Drain, Seep DSM2 netcdf output to dss format.
:: Run the dsm2 to dss conversion script
deltacd2dsm2 --input .\outputs\dcd_dsm2_planning.nc --output_dss .\outputs\dcd_dsm2_planning.dss

ECHO:
ECHO Finished running all the scripts.

PAUSE
