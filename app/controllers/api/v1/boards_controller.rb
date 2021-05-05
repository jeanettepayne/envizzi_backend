class Api::V1::BoardsController < ApplicationController

    def index
        boards = Board.all
        render json: BoardSerializer.new(boards)
    end

    def create
        board = Board.new(board_params)
        if board.save
            render json: board, status: :accepted
        else
            render json: {errors: board.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def board_params
        params.require(:board).permit(:title)
    end
end
