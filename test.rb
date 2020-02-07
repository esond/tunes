# Welcome to Sonic Pi v3.1
live_loop :beats do
  sample :bd_haus
  sleep 0.33
end

live_loop :choral_drone do
  sample :ambi_choir,
    #rate: 0.2,
    note: C
  sleep 1
end

