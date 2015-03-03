class DemosController < ApplicationController

    layout "demos_prods", except: [ :default, :emu ]

    def index
        render :default
    end

    def default
        render :layout => "demos_basic"
    end

    def emu
        render :layout => "demos_basic"
    end

    def atuck
        @demo = Demo.GetByID(1)
    end

    def colonic
        @demo = Demo.GetByID(2)
    end

    def ladmds2
        @demo = Demo.GetByID(3)
    end

    def airdirt
        @demo = Demo.GetByID(4)
    end

    def floormat
        @demo = Demo.GetByID(5)
    end

    def teckno
        @demo = Demo.GetByID(6)
    end

    def xmas97
        @demo = Demo.GetByID(7)
    end

    def dadplazz
        @demo = Demo.GetByID(8)
    end

    def mono
        @demo = Demo.GetByID(9)
    end

    def fake
        @demo = Demo.GetByID(10)
    end

end
