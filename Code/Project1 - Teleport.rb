pos = mc_get_pos()
x = pos[0]
y = pos[1]
z = pos[2]
play_pattern_timed [:c,:d,:g],[0.2]
mc_teleport(x,y+30,z)
sleep(1)
mc_message("Teleportation!!!")