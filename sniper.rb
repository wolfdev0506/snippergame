require 'gosu'
require_relative 'bin/backgrounds.rb'
require_relative 'bin/texts.rb'
require_relative 'song/audio.rb'
require_relative 'bin/comandos.rb'
require_relative 'bin/life.rb'
include Background
include Texts
include Comands
include Song
include Life

class Game < Gosu::Window

    def initialize alt = 1000, dir = 600, full = false

        super
        self.caption = "Sniper Shot"
        @x = 10
        @x_menu_exit = 260
        @y = 400
        @y_menu = 4
        @y_menu_pause = 120
        @up = "right"
        @pos = "up"
        @capt = "begin"
        @cont = 0 
        @n = 1

    end

    def button_down(id)
        @capt = "pause" if id == Gosu::KbEscape
    end
    
    def update

        @x +=3 if button_down?(Gosu::KbRight)
        @x -=3 if button_down?(Gosu::KbLeft)
        if button_down?(Gosu::KbUp) && @y_menu == 74
            @y_menu -=70 
        elsif button_down?(Gosu::KbDown) && @y_menu == 4 && @capt == "start"
            @y_menu +=70 
        end
        if button_down?(Gosu::KbRight) && @x_menu_exit == 260
            @x_menu_exit += 72
        elsif button_down?(Gosu::KbLeft) && @x_menu_exit == 332
            @x_menu_exit -= 72
        end
        if button_down?(Gosu::KbDown) && @y_menu_pause >= 120 && @y_menu_pause <= 175
            @y_menu_pause += 55
        elsif button_down?(Gosu::KbUp) && (@y_menu_pause >= 175 && @y_menu_pause <= 230)
            @y_menu_pause -= 55
        end


    end

    def needs_cursor?
        true
    end

    def draw
        if button_down?(char_to_button_id("x")) && @y_menu_pause == 175
            if @n < 12 && @n >= 1
                @n += 1 
            end
        end
        if @capt == "begin"
            beginnig "start"
            text_begin
            music_play @n
        elsif @capt == "start"
            start_2 "start", @y_menu
        elsif @capt == "play"
            life_energi 14
            action "capter-desert", @x, @y
            music_stop @n
        elsif @capt == "exit"
            exit_1 "exit", @x_menu_exit
        elsif @capt == "pause"
            music_play @n
            pause_1 "exit", @y_menu_pause
        end
    end
end

Game.new.show