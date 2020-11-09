require 'gosu'

module Life

    def life_energi n
        @life = Gosu::Image.new(self, "imag/life/life-#{n}.png", true)
        @life.draw 10, 10, 0.5, 0.5, 0.5
    end

end