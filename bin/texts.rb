require 'gosu'

module Texts
    def text_begin
        @test = Gosu::Font.new(self, Gosu::default_font_name, 25)
        @test_1 = Gosu::Font.new(self, Gosu::default_font_name, 15)
        @test_1.draw "Game develop by RobyGame \n @true4321king@gmail.com \n                   2019", 400, 540, 1, 1 , 1, Gosu::Color::WHITE
        @test.draw "Press x to continue", 395, 510, 1, 1, 1, Gosu::Color::RED
    end
    def ver n
        @test = Gosu::Font.new(self, Gosu::default_font_name, 25)
        @test.draw "Possition #{n}", 750, 570, 1, 1, 1, Gosu::Color::GREEN
    end
end