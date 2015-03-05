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
        @demo = OldDemo.GetByID(1)
    end

    def colonic
        @demo = OldDemo.GetByID(2)
    end

    def ladmds2
        @demo = OldDemo.GetByID(3)
    end

    def airdirt
        @demo = OldDemo.GetByID(4)
    end

    def floormat
        @demo = OldDemo.GetByID(5)
    end

    def teckno
        @demo = OldDemo.GetByID(6)
    end

    def xmas97
        @demo = OldDemo.GetByID(7)
    end

    def dadplazz
        @demo = OldDemo.GetByID(8)
    end

    def mono
        @demo = OldDemo.GetByID(9)
    end

    def fake
        @demo = OldDemo.GetByID(10)
    end

end
