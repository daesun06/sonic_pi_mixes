# Red Hot Chilli Peppers - Californication

define :play_sequence do |notes, amplitudes|
  notes.zip(amplitudes).each do |note, amp|
    play note, amp: amp
    sleep 0.5
  end
end
# intro
2.times do
  use_synth :dark_ambience
  play_sequence [:A2, :E3, :B3, :C4],[2, 1.7, 2, 2]
  sleep 0.5
  play :E2, cheese: 1, beans: 0.5, amp: 1.8, release: 0.6
  sleep 0.5
  play :E2, cheese: 1, beans: 0.5, amp: 1.8, release: 0.6
  sleep 0.25
  play :D2, cheese: 1, beans: 0.5, amp: 1.7, release: 0.5
  sleep 0.25
  play :C2, beans: 0.5, cheese: 1, amp: 1.7, release: 0.5
  sleep 1
  
  play_sequence [:F2,:C3,:G3,:A3],[2, 1.7, 2, 2]
  sleep 0.5
  play :A2, cheese: 1, beans: 0.5, amp: 1.7, release: 1
  sleep 0.5
  play :G2, beans: 0.5, cheese: 1, amp: 1.8, release: 1
  sleep 1
end
# melody
live_loop :californication do
  2.times do
    use_synth :dark_ambience
    4.times do
      sleep 0.15
      play_sequence [:A2, :E3, :B3],[2, 1.7, 2]
      play :C4, cheese: 1, beans: 0.5, amp: 2, release: 1
      sleep 1
      play :E2, cheese: 1, beans: 0.5, amp: 1.8, release: 0.6
      sleep 0.5
      play :E2, cheese: 1, beans: 0.5, amp: 1.8, release: 0.6
      sleep 0.25
      play :D2, cheese: 1, beans: 0.5, amp: 1.7, release: 0.5
      sleep 0.25
      play :C2, beans: 0.5, cheese: 1, amp: 1.7, release: 0.5
      sleep 0.5
      
      play_sequence [:F2,:C3,:G3,:A3],[2, 1.7, 2, 2]
      sleep 0.5
      play :A2, cheese: 1, beans: 0.5, amp: 1.7, release: 1
      sleep 0.5
      play :G2, beans: 0.5, cheese: 1, amp: 1.8, release: 1
      sleep 0.8
    end
    sleep 0.5
    play_sequence [:C2,:C3,:E3,:C3],[2,1.5,1.5,2]
    play_sequence [:G1,:G2,:B2,:G2],[2,1.5,1.5,2]
    play_sequence [:F1,:F2,:A2,:F2],[2,1.5,1.5,2]
    play :D3, amp: 2
    sleep 0.5
    play :A2, amp: 1.5
    sleep 0.1
    play :D3, amp: 1.5
    sleep 0.1
    play :F3, amp: 1.5
    sleep 1.8
  end
  use_synth :dark_ambience
  4.times do
    3.times do
      play_chord [:E3,:A3,:C4], release: 0.3
      sleep 0.3
    end
    4.times do
      play_chord [:E3,:A3,:C4], release: 0.15
      sleep 0.15
    end
    2.times do
      play_chord [:E3,:A3,:C4], release: 0.3
      sleep 0.3
    end
    2.times do
      play_chord [:E3,:A3,:C4], release: 0.15
      sleep 0.15
    end
    #
    3.times do
      play_chord [:A3,:C4,:F4], release: 0.3
      sleep 0.3
    end
    4.times do
      play_chord [:A3,:C4,:F4], release: 0.15
      sleep 0.15
    end
    2.times do
      play_chord [:A3,:C4,:F4], release: 0.3
      sleep 0.3
    end
    2.times do
      play_chord [:A3,:C4,:F4], release: 0.15
      sleep 0.15
    end
  end
  with_fx :reverb, room: 0.99, mix: 0.7 do
    use_synth :dark_ambience
    play_chord [:C3,:E3,:C4]
    sleep 0.75
    play_chord [:C3,:E3,:C4]
    sleep 0.75
    play_chord [:G2,:B2,:G4]
    sleep 0.75
    play_chord [:G2,:B2,:G4]
    sleep 0.5
    play_chord [:A3,:D4,:F4]
    sleep 0.75
    play_chord [:E3,:A3,:C4]
    sleep 1.75
    
    play_chord [:C3,:E3,:C4]
    sleep 0.75
    play_chord [:C3,:E3,:C4]
    sleep 0.75
    play_chord [:G2,:B2,:G4]
    sleep 0.75
    play_chord [:G2,:B2,:G4]
    sleep 0.5
    play_chord [:A3,:D4,:F4]
    sleep 0.75
    play_chord [:A3,:D4,:F4]
    sleep 1.75
    
    play_chord [:C3,:E3,:C4]
    sleep 0.75
    play_chord [:C3,:E3,:C4]
    sleep 0.75
    play_chord [:G2,:B2,:G4]
    sleep 0.75
    play_chord [:G2,:B2,:G4]
    sleep 0.5
    play_chord [:A3,:D4,:F4]
    sleep 0.75
    play_chord [:E3,:A3,:C4]
    sleep 1.75
    
    play_chord [:C3,:E3,:C4]
    sleep 0.75
    play_chord [:C3,:E3,:C4]
    sleep 0.75
    play_chord [:G2,:B2,:G4]
    sleep 0.75
    play_chord [:G2,:B2,:G4]
    sleep 0.5
    play_chord [:A3,:D4,:F4]
    sleep 0.75
    
    play :E3
    sleep 0.25
    play :A3
    sleep 0.25
    play :C4
    sleep 1.25
  end
end
# drums
loop do
  2.times do
    4.times do
      sample :drum_cymbal_closed, amp: 0.5
      sleep 0.05
      sample :drum_cymbal_closed, amp: 0.5
      sleep 0.05
      sample :drum_cymbal_closed, amp: 0.5
      sleep 0.05
      sample :drum_heavy_kick, amp: 0.5
      sleep 1
      sample :drum_cymbal_open, amp: 0.4
      sleep 1
      sample :drum_heavy_kick, amp: 0.5
      sleep 0.5
      sample :drum_heavy_kick, amp: 0.5
      sleep 0.25
      sample :drum_heavy_kick, amp: 0.5
      sleep 0.25
      sample :drum_cymbal_open, amp: 0.4
      sleep 1
      sample :drum_heavy_kick, amp: 0.5
      sleep 1
      sample :drum_cymbal_open, amp: 0.4
      sleep 1
      sample :drum_heavy_kick, amp: 0.5
      sleep 0.5
      sample :drum_heavy_kick, amp: 0.5
      sleep 0.25
      sample :drum_heavy_kick, amp: 0.5
      sleep 0.25
      sample :drum_cymbal_open, amp: 0.4
      sleep 0.8
    end
    28.times do
      sample :drum_heavy_kick, amp: 0.05
      sleep 0.25
    end
    sample :drum_bass_hard, amp: 0.2
    sleep 0.1
    sample :drum_bass_hard, amp: 0.3
    sleep 0.1
    sample :drum_cymbal_open, amp: 0.4
    sleep 1.8
  end
  64.times do
    sample :drum_heavy_kick, amp: 0.2
    sleep 0.3
  end
  sleep 21
end