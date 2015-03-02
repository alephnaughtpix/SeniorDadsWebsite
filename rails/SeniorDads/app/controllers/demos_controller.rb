class DemosController < ApplicationController

    #layout "demos_prods", except: [ :default, :emu ]
    layout "demos_basic", only: [ :default, :emu ]

    def default
    end

    def emu
    end

    def atuck
    end

    def index
        render :default
    end

end
