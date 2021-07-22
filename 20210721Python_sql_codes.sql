with agg_all as
(
select dates, game_size, match_id, match_mode, praty_size, player_assists, player_dbno, player_dist_ride, player_dist_walk, player_dmg, player_kills, player_name, player_survive_time, team_id, team_placement from agg_match_stats_0 where party_size = 4 
union all
select dates, game_size, match_id, match_mode, praty_size, player_assists, player_dbno, player_dist_ride, player_dist_walk, player_dmg, player_kills, player_name, player_survive_time, team_id, team_placement from agg_match_stats_1 where party_size = 4 
union all
select dates, game_size, match_id, match_mode, praty_size, player_assists, player_dbno, player_dist_ride, player_dist_walk, player_dmg, player_kills, player_name, player_survive_time, team_id, team_placement from agg_match_stats_2 where party_size = 4
union all
select dates, game_size, match_id, match_mode, praty_size, player_assists, player_dbno, player_dist_ride, player_dist_walk, player_dmg, player_kills, player_name, player_survive_time, team_id, team_placement from agg_match_stats_3 where party_size = 4 
union all
select dates, game_size, match_id, match_mode, praty_size, player_assists, player_dbno, player_dist_ride, player_dist_walk, player_dmg, player_kills, player_name, player_survive_time, team_id, team_placement from agg_match_stats_4 where party_size = 4
),
kill_all as
(
select killed_by, killer_name, killer_placement, killer_position_x,  from kill_match_stats_final_0
union all
select * from kill_match_stats_final_1
union all
select * from kill_match_stats_final_2
union all
select * from kill_match_stats_final_3
union all
select * from kill_match_stats_final_4
)
select a.dates
       , a.game_size
       , a.match_id
       , a.match_mode
       , a.praty_size
       , a.plater_assists
       , a.player_dbno
       , a.player_dist_ride
       , a.player_dist_walk
       , a.player_dmg
       , a.player_kills
       , a.player_name
       , a.player_survive_time
       , a.team_id
       , a.team_placement
       , k.killed_by
       , k.killer_placement
       , k.killer_position_x
       , k.killer_position_y
       , k.map
       , k.time
       , k.victim_placement
       , k.victim_position_x
       , k.victim_position_y
from agg_all as a, kill_all as k
where a.match_id = k.match_id ;

select * from kill_match_stats_final_0 ;
select * from agg_match_stats_0;