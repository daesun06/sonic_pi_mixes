# Red Hot Chilli Peppers - Snow (Hey Oh)

define :play_sequence do |notes, amplitudes|
  notes.zip(amplitudes).each do |note, amp|
    play note, amp: amp
    sleep 0.15
  end
  sleep 0.15
end

# intro
with_fx :reverb, room: 0.89, mix: 0.5 do
  use_synth :blade
  2.times do
    play_sequence [:Ds3, :Gs3, :B3, :Gs3, :B3, :Cs4, :B3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
    play_sequence [:E3, :Gs3, :B3, :Gs3, :B3, :Cs4, :B3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
    play_sequence [:B2, :Ds3, :Fs3, :Ds3, :Fs3, :Gs3, :Fs3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
    play_sequence [:Fs3, :As3, :Cs4, :As3, :Cs4, :Ds4, :Cs4], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1.3]
    play_sequence [:Ds3, :Gs3, :B3, :Gs3, :B3, :Cs4, :B3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
    play_sequence [:E3, :Gs3, :B3, :Gs3, :B3, :Cs4, :B3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
    play_sequence [:B2, :Ds3, :Fs3, :Ds3, :Fs3, :Gs3, :Fs3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
    play_sequence [:As2, :Cs3, :Fs3, :Cs3, :Fs3, :Gs3, :Fs3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1.3]
  end
end

# ambient hiss

live_loop :hiss do
  sample :vinyl_hiss , amp: 1.8
  sleep sample_duration :vinyl_hiss
end

# main riff
live_loop :snow_main_riff do
  with_fx :reverb, room: 0.89, mix: 0.5 do
    use_synth :blade
    4.times do
      play_sequence [:Ds3, :Gs3, :B3, :Gs3, :B3, :Cs4, :B3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
      play_sequence [:E3, :Gs3, :B3, :Gs3, :B3, :Cs4, :B3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
      play_sequence [:B2, :Ds3, :Fs3, :Ds3, :Fs3, :Gs3, :Fs3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
      play_sequence [:Fs3, :As3, :Cs4, :As3, :Cs4, :Ds4, :Cs4], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1.3]
      play_sequence [:Ds3, :Gs3, :B3, :Gs3, :B3, :Cs4, :B3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
      play_sequence [:E3, :Gs3, :B3, :Gs3, :B3, :Cs4, :B3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
      play_sequence [:B2, :Ds3, :Fs3, :Ds3, :Fs3, :Gs3, :Fs3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1]
      play_sequence [:As2, :Cs3, :Fs3, :Cs3, :Fs3, :Gs3, :Fs3], [1.8, 1.5, 1.5, 1.5, 2, 0.8, 1.3]
    end
    2.times do
      2.times do
        4.times do
          play_chord [:E3, :Gs4], release: 0.3
          sleep 0.3
        end
        4.times do
          play_chord [:E3, :Gs4], release: 0.15
          sleep 0.15
        end
      end
      3.times do
        play_chord [:Fs3, :As4], release: 0.3
        sleep 0.3
      end
      4.times do
        play_chord [:Gs3, :B4], release: 0.3
        sleep 0.3
      end
      2.times do
        play_chord [:Gs3, :B4], release: 0.15
        sleep 0.15
      end
      3.times do
        play_chord [:Gs3, :B4], release: 0.3
        sleep 0.3
      end
      3.times do
        play_chord [:Fs3, :As4], release: 0.3
        sleep 0.3
      end
      4.times do
        play_chord [:E3, :Gs4], release: 0.3
        sleep 0.3
      end
      4.times do
        play_chord [:E3, :Gs4], release: 0.15
        sleep 0.15
      end
    end
    4.times do
      16.times do
        play_chord [:B3, :Ds4, :Fs4, :B4]
        sleep 0.15
      end
      16.times do
        play_chord [:Cs4, :Fs4, :Gs4, :Cs5]
        sleep 0.15
      end
      16.times do
        play_chord [:Cs4, :E4, :Gs4, :Ds5]
        sleep 0.15
      end
    end
  end
end

# ambient choir and drums

live_loop :choir_like do
  4.times do
    with_fx :echo do
      use_synth :dark_ambience
      play :Ds4, amp: 8, release: 1.2
      sleep 1.2
      play :E4, amp: 8, release: 1.2
      sleep 1.2
      play :B3, amp: 8, release: 1.2
      sleep 1.2
      play :Fs4, amp: 8, release: 1.2
      
      sleep 1.2
      
      play :Ds4, amp: 8, release: 1.2
      sleep 1.2
      play :E4, amp: 8, release: 1.2
      sleep 1.2
      play :B3, amp: 8, release: 1.2
      sleep 1.2
      play :As3, amp: 8, release: 1.2
      
      sleep 1.2
    end
  end
  64.times do
    sample :drum_heavy_kick
    sleep 0.3
  end
  4.times do
    with_fx :echo do
      use_synth :dark_ambience
      play :B4, amp: 10, release: 2.4
      sleep 2.4
      play :Cs5, amp: 10, release: 2.4
      sleep 2.4
      play :Cs5, amp: 10, release: 2.4
      sleep 2.4
    end
  end
end