# Welcome to Sonic Pi v3.1

define :play_bb do |n|
  with_fx :bitcrusher, bits: 4 do
      sample :drum_bass_hard
        # amp: 0.5
  end
  sample :ambi_drone,
    rate: [0.25, 0.5, 0.125, 1].choose,
    # amp: 0.25 if rand < 0.125
    amp: 0.7
  sample :ambi_lunar_land,
    rate: [0.5, 0.125, 1, -1, -0.5].choose,
    # amp: 0.25 if rand < 0.125
    amp: 0.7
  sleep sample_duration(:loop_amen) / n
end

# loop {play_bb([1,2,4,8,16].choose)}
loop {play_bb(2)}

