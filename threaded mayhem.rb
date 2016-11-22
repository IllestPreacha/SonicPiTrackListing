in_thread name: :drums do
  256.times do
    sample :bd_haus, amp: 2
    sleep 0.5
  end
end

r = chord  :d3, :minor, num_ocaves: 3

in_thread name: :melody do
  256.times do
    play r.tick, release:0.25
    sleep 0.25
  end
end