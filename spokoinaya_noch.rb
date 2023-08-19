# Welcome to Sonic Pi
define :play_sequence do |notes, amplitudes|
  notes.zip(amplitudes).each do |note, amp|
    play note, amp: amp
    sleep 0.3
  end
end
2.times do
  with_fx :reverb, room: 0.89, mix: 0.5 do
    use_synth :hollow
    play_sequence [:A2,:A2,:A2,:C3,:C3,:C3,:C3,:C3,:G3,:G3,:G3,:C3,:C3,:C3,:C3,:C3,:B2,:B2,:B2,:D3,:D3,:D3,:D3,:D3,:D3,:D3,:D3,:C3,:C3,:B2,:C3,:C3], [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
  end
end

live_loop :hiss do
  sample :vinyl_hiss , amp: 0.8
  sleep sample_duration :vinyl_hiss
end

live_loop :calm_night do
  4.times do
    with_fx :reverb, room: 0.89, mix: 0.5 do
      use_synth :blade
      play_sequence [:A2,:A2,:A2,:C3,:C3,:C3,:C3,:C3,:G3,:G3,:G3,:C3,:C3,:C3,:C3,:C3,:B2,:B2,:B2,:D3,:D3,:D3,:D3,:D3,:D3,:D3,:D3,:C3,:C3,:B2,:C3,:C3], [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
    end
  end
  2.times do
    use_synth :hollow
    3.times do
      play_chord [:E3,:A3], amp: 6
      sleep 0.3
    end
    5.times do
      play_chord [:E3,:A3,:C4], amp: 6
      sleep 0.3
    end
    3.times do
      play_chord [:E3,:A3,:C4,:G4], amp: 6
      sleep 0.3
    end
    5.times do
      play_chord [:E3,:A3,:C4], amp: 6
      sleep 0.3
    end
    3.times do
      play_chord [:G2,:B2,:B3], amp: 6
      sleep 0.3
    end
    5.times do
      play_chord [:G2,:B2,:D4], amp: 6
      sleep 0.3
    end
    3.times do
      play_chord [:D3,:A3,:D4], amp: 6
      sleep 0.3
    end
    2.times do
      play_chord [:D3,:A3,:C4], amp: 6
      sleep 0.3
    end
    play_chord [:D3,:A3,:B3], amp: 6
    sleep 0.3
    2.times do
      play_chord [:D3,:A3,:C4], amp: 6
      sleep 0.3
    end
  end
  
  
  
end

live_loop :drums do
  4.times do
    3.times do
      sample :drum_heavy_kick, amp: 2
      sleep 0.3
      sample :drum_bass_hard, amp: 1.8
      sleep 2.7
    end
    sleep 0.6
  end
  64.times do
    sample :drum_bass_hard, amp: 1
    sleep 0.3
  end
end

live_loop :choir do
  with_fx :reverb, room: 0.89, mix: 0.5 do
    use_synth :dark_ambience
    play :A4, amp: 4, release: 0.9
    sleep 0.9
    play :C5, amp: 4, release: 1.5
    sleep 1.5
    play :G5, amp: 4, release: 0.9
    sleep 0.9
    play :C5, amp: 4, release: 1.5
    sleep 1.5
    play :B4, amp: 4, release: 0.9
    sleep 0.9
    play :D5, amp: 4, release: 1.5
    sleep 1.5
    play :D5, amp: 4, release: 0.3
    sleep 0.3
    play :D5, amp: 4, release: 0.6
    sleep 0.6
    play :C5, amp: 4, release: 0.6
    sleep 0.6
    play :B4, amp: 4, release: 0.3
    sleep 0.3
    play :C5, amp: 4, release: 0.3
    sleep 0.3
    play :C5, amp: 4, release: 0.3
    sleep 0.3
  end
end