class HunterMovesController < ApplicationController

    def index
        @hunter_moves = HunterMove.all
        render json: @hunter_moves
    end
end
