live_loop :duplicator do
  pos = mc_get_tile
  #mc_message(pos)
  x = pos[0]
  y = pos[1]
  z = pos[2]
  below = mc_get_block(x,y-1,z)
  #mc_message(below)
  mc_set_block(below ,x,y+3,z)
  sleep 0.1
end

live_loop :beat do
  use_synth :blade
  play_pattern_timed [:c,:d,:g],[0.3,0.1,0.1]
  sleep 0.5
end