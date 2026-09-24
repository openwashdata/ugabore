# Borehole repair data from central Uganda

Data set about borehole repair records from the borehole operation and
maintenance company operating in central Uganda. Population data is
picked as an interview from a representative of the Local Water User
Committees (LWUCs). The data on the technical specifications about the
borehole is picked from the borehole records file from the company.

## Usage

``` r
ugabore
```

## Format

A tibble with 171 rows and 10 variables

- community:

  Local name used to refer to the administrative unit 5 where the
  borehole is located.

- parish:

  Local name used to refer to the administrative unit 4 where the
  borehole is located.

- sub_county:

  Local name used to refer to the administrative unit 3 where the
  borehole is located.

- source_id:

  Unique identification number assigned to the borehole by the borehole
  maintenance company.

- repair_date:

  Most recent repair date of the borehole.

- population_served:

  Number of people that collect water from the borehole.

- well_depth:

  Total depth of the borehole (measured in meters).

- static_water_depth:

  Depth of the stable water level within the borehole when pumping isn't
  happening (measured in meters).

- pump_installation_depth:

  Depth of the pump when installed from land surface (measured in
  meters).

- well_yield:

  Water production capacity of the borehole (measured in m3/h).
