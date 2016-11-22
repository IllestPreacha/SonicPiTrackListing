#eucilean beats using the spread function
#the spread and pre define notions can be use to find functions
#onset can be chosen at random with pick or used a certain beat with a onset value
#external editors can be connected via an osc api
#multi-channelaudio is in development
#with spread (5,8), (5,12), (11,24)

use_bpm 20
n = ring(:b3,:c4,:c5)

live_loop :bassflow , sync: :test do
  use_bpm 120
  if one_in(2)
    sample :drum_bass_hard
    sleep 0.5
  else
    sample :drum_bass_soft
    sleep 0.25
  end
end


live_loop :test do
  play n.tick, on: spread(11,24).look, release: (1.0/24), pan: -0.5
  sleep(1.0/24)
end

live_loop :flow do
  sample :bd_haus if spread(11,24).tick
  sleep (1.0/24)
end

live_loop :startingline do
  sample :bd_haus, rate: 1
  sleep 0.5
  4.times do
    sample :drum_heavy_kick
    sleep (1.0/24)
  end
end


live_loop :hiphop do
  use_bpm 5
  sample :vinyl_rewind if spread(1,40).tick
  sleep(1.0/40)
end

live_loop :drumskick do
  sample :ambi_choir if spread(1,32).tick
  sleep(1.0/32)
end

live_loop :islandflavour do
  use_bpm 60
  sample :perc_bell if spread(11,24).tick
  sleep (4)
end

at [24, 24,24 ],
[{:amp=>0.5}, {:amp=> 0.8}] do |p|
  sample :drum_cymbal_open, p
end

r = chord :d4, :minor, num_octaves: 3
s = chord :g4, :major, num_octaves: 3

x = rand(1000)



