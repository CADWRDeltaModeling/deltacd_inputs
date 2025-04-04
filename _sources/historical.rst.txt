===============
Historical Data
===============

The historical inputs are used to produce channel depletion outputs for DSM2, SCHISM, Suisun Marsh. There are two sets of historical inputs per case, one for the DETAW step, and the other for DCD step.

DETAW Inputs
------------

The DETAW part calculates the water balance for each subarea. The input files for the DETAW part are shown in the sections below.

Main input file
^^^^^^^^^^^^^^^
The main input file is a YAML format file that contains parameters and input file names for DETAW model. The main input file for DSM2 is shown below as an example. See the `DETAW documentation <https://cadwrdeltamodeling.github.io/deltacd/detaw.html#main-input-file>`_ for more information.

.. literalinclude:: ../historical/detaw_dsm2.yaml
  :language: yaml
  :caption: detaw_dsm2.yaml

Precipitation
^^^^^^^^^^^^^

A Precipitation input file contains daily precipitation data table for climate stations in the CSV format. The first line is the header, and the columns are year, month, day, julian day of year (DOY), and precipitation data for each station.  The unit of the precipitation data is in mm/day.

For the Delta, there are seven stations from  Brentwood, Davis, Galt, Lodi, RioVista, Stockton, and Tracy. A sample format of the precipitation data is shown below.

.. literalinclude:: ../historical/inputs/mm_pcp.csv
  :caption: mm_pcp.csv for DSM2
  :lines: 1,36255-36257

.. csv-table:: Precipitation data
  :header-rows: 1

  year,month,day,DOY,Brentwood,Davis,Galt,Lodi,RioVista,Stockton,Tracy
  2021,01,01,1,0.2,0.0,0.1,0.0,0.3,0.0,0.1
  2021,01,02,2,0.0,0.1,0.0,0.2,0.0,0.1,0.0
  2021,01,03,3,0.1,0.0,0.2,0.0,0.1,0.0,0.3

Landuse
^^^^^^^

A csv file with landuse data for the subareas. This is annual landuse. The units of the data are in hectares/year. DSM2, SCHISM and Calsim3 use 15 landuse categories. Suisun Marsh uses 16 landuse categories.

.. csv-table:: Landuse categories
  :header-rows: 1

  Number,Crop categories,Landuse ID
  1,Urban,UR
  2,Pasture,PA
  3,Alfalfa,AL
  4,Field Crops,FI
  5,Sugar Beets,SB
  6,Grain,GR
  7,Rice,RI
  8,Trucks,TR
  9,Tomatoes,TO
  10,Orchards,OR
  11,Vineyards,VI
  12,Riparian Vegetation,RV
  13,Native Vegetation,NV
  14,Non-Irrigated Grains,DGR
  15,Water Surfaces,WS

The processed crop-specific landuse data is collected from survey or satellite images.

Precipitation distribution / ET Correction
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Rainfall data were unavailable for most of the Delta sub-areas. Therefore, a spatial relationship between rainfall data from key stations was developed and used to estimate rainfall in each of the 168 sub-areas. Similarly, ET correction factors were developed comparing ET from DETAW to remotely sensed estimates. This file does not need to be modified unless one is trying to change the spatial distribution of rainfall or ET correction factors.

Crop information (Critical Year)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Crop information (Non Critical Year)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


DCD Inputs
----------

The DCD part distributes the DETAW outputs to model nodes while accounting for area splitting and double-counting for Calsim3, for example.

Subarea info
^^^^^^^^^^^^
Irrigation efficiency
^^^^^^^^^^^^^^^^^^^^^
Leach applied
^^^^^^^^^^^^^^^
Leach drained
^^^^^^^^^^^^^^^
Groundwater rates
^^^^^^^^^^^^^^^^^
Diversion rates
^^^^^^^^^^^^^^^^
Drainage rates
^^^^^^^^^^^^^^^^
Detaw output
^^^^^^^^^^^^^
