
with_fx :reverb, mix: 0.6 do
  live_loop :bassflow do
    use_bpm 120
    if one_in(2)
      sample :drum_bass_hard
      sleep 0.5
    else
      sample :drum_bass_soft
      sleep 0.25
    end
  end
end

with_fx :ixi_techno do
  live_loop :heavydrum do
    if one_in(2)
      use_bpm 120
      sample :drum_cymbal_closed
      sleep 0.5
    else
      sample :drum_heavy_kick
      sleep 0.25
    end
  end
end

with_fx :echo, mix: 0.4, decay: 0.6 do
  live_loop :moredrums do
    if one_in(2)
      use_bpm 120
      sample :drum_cymbal_closed
      sleep 0.5
    else
      use_bpm 60
      sample :drum_heavy_kick
      sleep 0.25
    end
  end
end

live_loop :drumming do
  sample :drum_cymbal_pedal
  sample :drum_splash_hard
  sleep 8
end

with_fx :echo, mix: 0.7, amp: 3 do
  live_loop :moredrums do
    sample :drum_tom_mid_soft
    sleep 1
  end
end
