class HunterMovesController < ApplicationController

    def index
        @hunter_moves = HunterMove.all
    end
end
