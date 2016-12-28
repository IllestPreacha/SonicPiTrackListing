live_loop :bassflow do
  use_bpm 20
  if one_in(2)
    sample :drum_bass_hard if spread(7,12).tick
    sleep 0.5
  else
    sample :drum_bass_soft if spread(5,12).tick
    sleep 0.25
  end
end

with_fx :reverb, mix: 0.6 do
  live_loop :start do
    use_bpm 20
    if one_in(3)
      sample :tabla_ghe4 if spread(17,24).tick
      sleep (1.0/24)
    else one_in(2)
      sample :tabla_ghe2 if spread(5,12).tick
      sleep (1.0/24)
      sample :tabla_ghe2 if spread(7,12).tick
      sleep (1.0/24)
    end
  end
end

live_loop :bding, amp: 1 do
  use_bpm 20
  sample :bd_808 if spread(5,12).tick
  sleep (1.0/24)
  sample :bd_fat if spread(7,12).tick
  sleep(1.0/24)
end
