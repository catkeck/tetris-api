class Api::V1::TetrisController < ApplicationController

	def index
		render json: {message: 'ciao'}
	end

end