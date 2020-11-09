require 'gosu'

module Menu
    def start_menu y
        @opc_1 = Gosu::Image.new(self, "imag/menu/button-start.png", true)
        @opc_2 = Gosu::Image.new(self, "imag/menu/button-exit.png", true)
        @selct = Gosu::Image.new(self, "imag/menu/button-select.png", true) 

        @selct.draw 436, y, 1, 1, 1
        @opc_1.draw 420, 20, 1, 1, 1 
        @opc_2.draw  420, 90, 1, 1, 1
    end
    def exit_menu x
        @text = Gosu::Image.new(self, "imag/menu/Text-exit.png", true)
        @opc_sim = Gosu::Image.new(self, "imag/menu/opc-sim.png", true)
        @opc_nao = Gosu::Image.new(self, "imag/menu/opc-nao.png", true)
        @selct = Gosu::Image.new(self, "imag/menu/exit-select.png", true)

        @text.draw 300, 150, 0.5, 0.5, 0.5
        @opc_sim.draw 270, 200, 0.5, 0.5, 0.5
        @opc_nao.draw 330, 200, 0.5, 0.5, 0.5
        @selct.draw x, 200, 0.5, 0.5, 0.5    
    end
    def pause_menu y
        @pause = Gosu::Image.new(self, "imag/menu/pausa.png", true)
        @opc_1 = Gosu::Image.new(self, "imag/menu/continu.png", true)
        @opc_2 = Gosu::Image.new(self, "imag/menu/principal.png", true)
        @opc_3 = Gosu::Image.new(self, "imag/menu/exit.png", true)
        @selct = Gosu::Image.new(self, "imag/menu/button-select.png", true)

        @pause.draw 100, 5, 1, 1, 1
        @opc_1.draw 300, 170, 0.5, 0.5, 0.5
        @opc_2.draw 300, 220, 0.5, 0.5, 0.5
        @opc_3.draw 300, 270, 0.5, 0.5, 0.5
        @selct.draw 160, y, 0.8, 0.8, 0.8

    end
end
