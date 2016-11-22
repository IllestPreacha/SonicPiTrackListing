#play 60
#those numbers are midi notes

#not integer base, can also use decima;s

#you can also use : play c4 , symbols for notes + octave
# s is a sharp , b are flats, notes are a-g

use_bpm 75

play :cb4, release: 3
sleep 1
play :cs4, sustain: 4
sleep 1

#sample  : pre determined sounds
# sleep acts as a buffer and times are specify in beats
#sonic pi uses 60bpm by default
# can change using: use_bpm 140 (Which can be used for different genres)
#use_bpm is a global variable
# envelopes such as attack, release, decay, sustain are in seconds

use_sample_bpm :loop_amen, num_beats: 4
n = (ring :cb3, :cs4, :cb5)
8.times do
  sample :bd_haus, amp: 4, release: 2, rate: -0.5
  sleep 1
  sample :loop_amen, rate: 0.5, amp: 5, release: 2
  sleep 4
end

16.times do
  sample :elec_blip2, rate: -0.5, sustain: 2
  sleep 2
end

n = (ring :cb3, :cs4, :cb5)
6.times do
  play n.tick
  sleep 1
end

r = chord :c4, :major, num_octaves: 3
s = chord :g4, :major, num_octaves: 3

use_random_seed 2311

16.times do
  play r.choose, release: 0.25
  sleep 0.25
  play s.choose, release: 0.25
  sleep 0.25
end


#rate affects the speed , -rates reverses the sample
#In music, an octave (Latin: octavus: eighth) or perfect octave is the interval
#between one musical pitch and another with half or double its frequency.
#rings makes a list , circular
#tick returns an increasing numberwhich is then return
#puts equal println




#in a ring , tick plays through a list and can go through an array
#a natural counter without doing much
