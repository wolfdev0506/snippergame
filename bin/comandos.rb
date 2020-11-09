require 'gosu'
require_relative 'backgrounds.rb'
require_relative 'player.rb'
require_relative 'menu.rb'
require_relative 'texts.rb'
#require 'C:/Users/User/Desktop/Sniper/song/audio.rb'
include Background
include Menu
include Player
include Texts

module Comands
    def beginnig name
        backgrounds "#{name}"
        text_begin
        @present = Gosu::Image.new(self, "imag/Present/Name.png", true)
        @present.draw 630, 10, 0.4, 0.4, 0.4
        if button_down?(char_to_button_id("x"))
            @capt = "start"
        end
    end
    def start_2 name, y
        backgrounds "#{name}"
        start_menu y
        if y == 4 && button_down?(char_to_button_id("x"))
            @capt = "play"
        end
        if y == 74 && button_down?(char_to_button_id("x"))
            @capt = "exit"
        end
    end
    def action name, x, y
        backgrounds "#{name}"
        t = 0
        if button_down?(Gosu::KbRight)
            soldierMoving "running", "right", x + 80, y + 30, 6
            t = 1
            @up = "right"

        elsif button_down?(Gosu::KbLeft)
            soldierMoving "running", "left", x + 20, y + 30, 6
            t = 1
            @up = "left"

        elsif button_down?(Gosu::KbDown)
            soldierMoving "sitting", @up, x + 50, y + 30, 4
            @pos ="down"
            @cont = 1
            t = 1
        elsif button_down?(Gosu::KbUp)
            soldierMoving "sitting", @up, x + 50, y + 30, 4
            @pos ="up"
            @cont = 0
            t = 1
        elsif button_down?(char_to_button_id("a"))
            if @up == "left"
                soldierMoving "firing", @up, x + 5, y, 4
            else
                soldierMoving "firing", @up, x + 82, y, 4
            end
            t = 1
        elsif button_down?(char_to_button_id("s"))
            if @up == "left"
                soldierMoving "nafing", @up, x + 15, y + 25, 4
            else
                soldierMoving "nafing", @up, x + 70, y + 25, 4
            end
            t = 1
        elsif button_down?(char_to_button_id("d"))
            t = 1
            @pos = "death"
            @cont = 2
        end

        if t == 0
            if @cont == 1
                soldierUp @pos, @up, x + 45, y + 30
            elsif @cont == 2
                soldierMoving "death", @up, x + 60, y + 25, 4
            else
            soldierUp @pos, @up, x, y
            end
        end
    end
    def exit_1 name, x
        backgrounds "#{name}"
        exit_menu x
        close if x == 260 && button_down?(char_to_button_id("x"))
        if x == 332 && button_down?(char_to_button_id("x"))
            @capt = "start"
        end
    end
    def pause_1 name, y_menu_pause
        if @capt == "pause"
            backgrounds "#{name}"
            pause_menu y_menu_pause
        end
        if button_down?(char_to_button_id("x")) && y_menu_pause == 120
            @capt = "play"
        elsif button_down?(char_to_button_id("x")) && y_menu_pause == 175
            @capt = "start"
        elsif button_down?(char_to_button_id("x")) && y_menu_pause == 230
            @capt = "exit"
        end
    end
end 