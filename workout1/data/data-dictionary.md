Data Dictionary
================

<table>
<colgroup>
<col width="31%" />
<col width="25%" />
<col width="16%" />
<col width="27%" />
</colgroup>
<thead>
<tr class="header">
<th>Variable</th>
<th align="center">Name of Variable</th>
<th align="center">Type</th>
<th align="right">Short Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Team Name</td>
<td align="center">team_name</td>
<td align="center">Character</td>
<td align="right">Name of the team that the player plays for</td>
</tr>
<tr class="even">
<td>Game Date</td>
<td align="center">game_date</td>
<td align="center">Real</td>
<td align="right">The date of the game in which the player made the corresponding shot</td>
</tr>
<tr class="odd">
<td>Season</td>
<td align="center">season</td>
<td align="center">Real</td>
<td align="right">The year that these games were played in</td>
</tr>
<tr class="even">
<td>Period</td>
<td align="center">period</td>
<td align="center">Real</td>
<td align="right">An NBA game is divided into 4 periods of 12 minutes each, so period 1 = first 12 min, period 2 = next 12 min, etc</td>
</tr>
<tr class="odd">
<td>Minutes Remaining</td>
<td align="center">minutes_remaining</td>
<td align="center">Real</td>
<td align="right">Amount of time (in minutes) left to be played in the given period</td>
</tr>
<tr class="even">
<td>Seconds Remaining</td>
<td align="center">seconds_remaining</td>
<td align="center">Real</td>
<td align="right">Amount of corresponding seconds left to be played in the given period</td>
</tr>
<tr class="odd">
<td>Shot</td>
<td align="center">shot_made_flg</td>
<td align="center">Logical</td>
<td align="right">Indicates whether the shot was made (Y) or missed (N)</td>
</tr>
<tr class="even">
<td>Type of Action</td>
<td align="center">action_type</td>
<td align="center">Character</td>
<td align="right">Type of basketball move attempted by the player</td>
</tr>
<tr class="odd">
<td>Type of Shot</td>
<td align="center">shot_type</td>
<td align="center">Character</td>
<td align="right">Indicates whether was a 2 or 3-point field goal</td>
</tr>
<tr class="even">
<td>Distance of the Shot</td>
<td align="center">shot_distance</td>
<td align="center">Real</td>
<td align="right">Measures the distance to the basket (in feet)</td>
</tr>
<tr class="odd">
<td>Opponent</td>
<td align="center">opponent</td>
<td align="center">Character</td>
<td align="right">The team that the player was playing against while taking that specific shot</td>
</tr>
<tr class="even">
<td>Court Coordinates</td>
<td align="center">x</td>
<td align="center">Real</td>
<td align="right">Court coordinates (in inches) where a shot occurred</td>
</tr>
<tr class="odd">
<td>Court Coordinates</td>
<td align="center">y</td>
<td align="center">Real</td>
<td align="right">Court coordinates (in inches) where a short occurred</td>
</tr>
</tbody>
</table>
