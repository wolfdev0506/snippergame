require 'gosu'

module Song
    def music_play n
        @music1 = Gosu::Song.new self, "song/#{n}.mp3"
        @music1.play
    end
    def music_stop n
        @music1 = Gosu::Song.new self, "song/#{n}.mp3"
        @music1.stop
    end
end
