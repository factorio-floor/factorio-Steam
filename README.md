factorio-Steam
==============

Various steam pressures and supporting items

Buildings:

HP Feedwater pump - TODO

LP Feedwater pump - PARTIAL - needs recipe

Liquids:

LP steam - DONE

HP steam - DONE

Technology:
LP steam TODO
HP steam TODO

Misc notes and calculations:

Hot water
0psi 100c/1150btulb		100kpa, .598kg/m3, 419.1 or 2257/kg = 1350kj/m3 = 135kj/10l

LP steam
<15psi 121c/1164		206.8kpa, 1.155kg/m3, 2200/kg = 2541kj/m3 = 254.1kj/10l

HP steam
<150psi 185/1196		1138kpa, 5.89kg/m3, 1991/kg = 11727kj/m3 = 1172.7kj/10l

SHP steam?
>150psi?

10 units/pipe

1kj/unit/degree heat for water

100c-15c = 85c * 1kj/unit/degree = 85kj/unit@100c

So my factorio vanilla factor is 85/135 = .62

So hot water = 135*.62 = 83.7kj @ 100c. Convert to per degree = 83.7/(100-15) = ~1kj/degree

LP = 254.1*.62 = 157.5kj @ 121c. Converted 157.5/(121-15) = ~1.5kj/degree

HP = 1172.7*.62 = 727 @ 185c. converted 727/(185-15) = ~4.25kj/degree
