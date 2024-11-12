#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
# ...
# Description:  This function monitors the server's TPS values ​​and deactivates certain checks if necessary to avoid false positives.
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.

execute if score .TPS ncmTPS < DataHolder ncmc_bs_lg_2 run scoreboard players operation DataHolder ncmMVMTSLagTimeout = DataHolder ncmc_bs_lg_1
execute if score DataHolder ncmMVMTSLagTimeout matches 1.. run scoreboard players remove DataHolder ncmMVMTSLagTimeout 1
