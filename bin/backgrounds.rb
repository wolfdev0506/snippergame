require 'gosu'

module Background
    def backgrounds name
        @full = Gosu::Image.new(self, "imag/background/#{name}.jpg", true)
        @full.draw 0, 0, 0
    end
end
