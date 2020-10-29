﻿* Encoding: UTF-8.
LOGISTIC REGRESSION VARIABLES Bin_inhabited
  /METHOD=FSTEP(COND) SoilC_FAC1 SoilC_FAC2
  /METHOD=FSTEP(COND) Precipmm Snowfallmm
  /METHOD=FSTEP(COND) ElevationM SlopeDegree TWetnessI ElevationM*SlopeDegree*TWetnessI
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).


LOGISTIC REGRESSION VARIABLES Bin_inhabited
  /METHOD=FSTEP(LR) SoilC_FAC1 SoilC_FAC2 Precipmm Snowfallmm
  /METHOD=FSTEP(LR) SEEP_DIST INHAB_DIST
  /METHOD=FSTEP(LR) ElevationM SlopeDegree TWetnessI ElevationM*SlopeDegree*TWetnessI
  /METHOD=FSTEP(LR) ROAD_DIST TRAIL_DIST OUTFALL_DIST IMPERV_DIST BORDER_DIST ROAD_DIST*TRAIL_DIST
  /METHOD=FSTEP(LR) Seeps_per_m2 Seepsperpatch Count_Inhab_inpatch
  /METHOD=FSTEP(LR) UNIT_LINK
  /CONTRAST (UNIT_LINK)=Indicator
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).


LOGISTIC REGRESSION VARIABLES Crangonyx
  /METHOD=BSTEP(LR) SoilC_FAC1 SoilC_FAC2 Precipmm Snowfallmm
  /METHOD=BSTEP(LR) SEEP_DIST INHAB_DIST
  /METHOD=BSTEP(LR) ElevationM SlopeDegree TWetnessI ElevationM*SlopeDegree*TWetnessI
  /METHOD=BSTEP(LR) ROAD_DIST TRAIL_DIST OUTFALL_DIST IMPERV_DIST BORDER_DIST ROAD_DIST*TRAIL_DIST
  /METHOD=BSTEP(LR) Seeps_per_m2 Seepsperpatch Count_Inhab_inpatch
  /METHOD=BSTEP(LR) UNIT_LINK
  /CONTRAST (UNIT_LINK)=Indicator
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

