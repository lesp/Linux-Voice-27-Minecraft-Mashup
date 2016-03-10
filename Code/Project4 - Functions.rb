use_bpm(120)

def bell;
  sample :elec_bell, rate: [-1,1.5,0.5].choose
  sleep 0.1
end

def fm;
  use_synth :fm
  play [:d5,:c5,:g5].choose
  sleep 0.1
end

def plinky;
  use_synth :mod_pulse
  play [:d5,:c5,:g5].choose
  sleep 0.1
end

live_loop :duplicator do
  pos = mc_get_tile
  #mc_message(pos)
  x = pos[0]
  y = pos[1]
  z = pos[2]
  below = mc_get_block(x,y-1,z)
  #mc_message(below)
  mc_set_block([:wood,:diamond_block,].choose ,x,y-1,z)
  sleep 0.2
end

live_loop :beat do
  plinky
  bell
  fm
end
