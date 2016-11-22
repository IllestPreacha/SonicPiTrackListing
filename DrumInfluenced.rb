1.times do
  
  sample :bass_drop_c,pan: -0.5, attack_level: 4, attack: 2, sustain: 1, release: 2, decay: 2
  sample :bass_drop_c
  play rrand(30,50)
  sleep 1
  
  live_loop :bass_kick do
    with_fx :reverb, amp: 5 do
      with_fx :ixi_techno do
        with_fx :echo do
          32.times do
            sample :drum_heavy_kick
            sleep 0.5
          end
        end
      end
    end
  end
end

live_loop :pianorift do
  with_fx :reverb do
    with_fx :ixi_techno do
      sample :ambi_piano , amp: 4
      sleep 0.5
    end
  end
end


live_loop :randomness do
  use_bpm 80
  sample :sn_dub, onset: choose
  sleep 0.5
end


