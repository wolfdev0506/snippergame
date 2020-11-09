require 'gosu'

module Player
    def soldierUp act, dir, x, y

        @soldier = Gosu::Image.new(self, "imag/soldiers/possition/#{act}/soldier-#{act}-#{dir}.png", true)
        @soldier.draw x, y, 1, 1, 1
    end
    def soldierMoving act, dir, x, y, pic
        @soldier = (1...pic).map do |i|
            Gosu::Image.new(self, "imag/soldiers/#{act}/#{dir}/soldier-#{act}-#{i}.png", true)
        end
        if act == "death"
            image = @soldier[Gosu.milliseconds / 900 % @soldier.size]
            x -= 5
            image.draw x, y, 1, 1, 1
        else
            image = @soldier[Gosu.milliseconds / 100 % @soldier.size]
            image.draw x, y, 1, 1, 1
        end
    end
end
