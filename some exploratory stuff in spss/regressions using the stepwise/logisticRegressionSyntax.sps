﻿* Encoding: UTF-8.
*With saving and H-L test
  
  LOGISTIC REGRESSION VARIABLES Bin_Inhabited
  /METHOD=ENTER SoilC_FAC1
  /METHOD=ENTER Count_Inhab_inpatch
    /METHOD=ENTER seepsperpatch seeps_per_m2
   /METHOD=ENTER ROAD_DIST BORDER_DIST
   /METHOD=ENTER UNIT_LINK
  /CONTRAST (UNIT_LINK)=Indicator
  /SAVE=COOK LEVER SRESID
  /PRINT=GOODFIT
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).



LOGISTIC REGRESSION VARIABLES Bin_hotspot
  /METHOD=ENTER ElevationM SoilC_FAC1 SlopeDegree
  /METHOD=ENTER TWetnessI
  /METHOD=ENTER UNIT_LINK
  /METHOD=ENTER Count_Inhab_inpatch TRAIL_DIST INHAB_DIST
  /CONTRAST (UNIT_LINK)=Indicator
  /PRINT=GOODFIT
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).










