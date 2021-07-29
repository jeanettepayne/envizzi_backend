class Api::V1::BoardsController < ApplicationController

    def index
        boards = Board.all
        render json: BoardSerializer.new(boards)
    end

    def create
        board = Board.new(title: params[:board][:title])
        params[:board][:items].each do |item|
            board.items.build(name: item)
        end

        if board.save
            render json: BoardSerializer.new(board), status: :accepted
        else
            render json: {errors: board.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def edit
        board = Board.find_by(title: params[:title])
    end

    private

    def board_params
        params.require(:board).permit(:title, items: [])
    end
end
