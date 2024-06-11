===============
Historical Data
===============

The historical inputs are used to produce output for DSM2, SCHISM, Suisun Marsh. There are two sets of historical inputs:

DETAW Inputs
----------------

* Precipitation

    A csv file with precipitation data for these climate stations Brentwood, Davis, Galt, Lodi, RioVista, Stockton, Tracy. The units of the data are in mm/day. A sample format of the precipitation data is shown below.

.. list-table:: Precipitation data
   :widths: 25 25 25 25 25 25 25 25 25 25 25
   :header-rows: 1

   * - year
     - month
     - day
     - DOY
     - Brentwood
     - Davis
     - Galt
     - Lodi
     - RioVista
     - Stockton
     - Tracy
   * - 2021
     - 01
     - 01
     - 1
     - 0.2
     - 0.0
     - 0.1
     - 0.0
     - 0.3
     - 0.0
     - 0.1
   * - 2021
     - 01
     - 02
     - 2
     - 0.0
     - 0.1
     - 0.0
     - 0.2
     - 0.0
     - 0.1
     - 0.0
   * - 2021
     - 01
     - 03
     - 3
     - 0.1
     - 0.0
     - 0.2
     - 0.0
     - 0.1
     - 0.0
     - 0.3

* Landuse

    A csv file with landuse data for the subareas. This is annual landuse. The units of the data are in hectares/year. DSM2, SCHISM and Calsim3 use 15 landuse categories. Suisun Marsh uses 16 landuse categories.

.. list-table:: Landuse categories
   :widths: 25 25 50
   :header-rows: 1

   * - Number
     - Crop categories
     - Landuse ID
   * - 1
     - Urban
     - UR
   * - 2
     - Pasture
     - PA
   * - 3
     - Alfalfa
     - AL
   * - 4
     - Field Crops
     - FI
   * - 5
     - Sugar Beets
     - SB
   * - 6
     - Grain
     - GR
   * - 7
     - Rice
     - RI
   * - 8
     - Trucks
     - TR
   * - 9
     - Tomatoes
     - TO
   * - 10
     - Orchards
     - OR
   * - 11
     - Vineyards
     - VI
   * - 12
     - Riparian Vegetation
     - RV
   * - 13
     - Native Vegetation
     - NV
   * - 14
     - Non-Irrigated Grains
     - DGR
   * - 15
     - Water Surfaces
     - WS

The processed crop-specific landuse data is collected from survey or satellite images.

* Precipitation distribution / ET Correction
    Rainfall data were unavailable for most of the Delta sub-areas. Therefore, a spatial relationship between rainfall data from key stations was developed and used to estimate rainfall in each of the 168 sub-areas. Similarly, ET correction factors were developed comparing ET from DETAW to remotely sensed estimates. This file does not need to be modified unless one is trying to change the spatial distribution of rainfall or ET correction factors.
* Crop information (Critical Year)
* Crop information (Non Critical Year)


DCD Inputs
----------

* Subarea info
* Irrigation efficiency
* Leach applied
* Leach drained
* Groundwater rates
* Diversion rates
* Drainage rates
* Detaw output