require 'gosu'

module Song
    def music_play
        count = 0
        @music1 = Gosu::Sample.new "song/a.mp3"
        @music2 = Gosu::Song.new "2.mp3"
        @music3 = Gosu::Song.new "3.mp3"
        @music4 = Gosu::Song.new "4.mp3"
        @music5 = Gosu::Song.new "5.mp3"
        @music6 = Gosu::Song.new "6.mp3"
        @music7 = Gosu::Song.new "7.mp3"
        @music8 = Gosu::Song.new "8.mp3"
        @music9 = Gosu::Song.new "9.mp3"
        @music10 = Gosu::Song.new "10.mp3"
        @music11 = Gosu::Song.new "11.mp3"
        @music12 = Gosu::Song.new "12.mp3"
        @music1.play
        if count == 1
            @music1.play
        elsif count == 2
            @music2.play
        elsif count == 3
            @music3.play
        elsif count == 4
            @music4.play
        elsif count == 5
            @music5.play
        elsif count == 6
            @music6.play
        elsif count == 7
            @music7.play
        elsif count == 8
            @music8.play
        elsif count == 9
            @music9.play
        elsif count == 10
            @music10.play
        elsif count == 11
            @music11.play
        end

    end
end
