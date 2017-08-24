class Api::V1::TetrisController < ApplicationController

	def index
		@games = Game.all
		render json: @games
	end

	def create
	    game = Game.create(game_params)
	    render json: game, status: 201
	end

	private

	def game_params
		params.permit(:name, :score)
	end

end