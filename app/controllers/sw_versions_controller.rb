class SwVersionsController < ApplicationController
	def index
		@showAllSwVersion = SwVersion.all
	end
	def show
		@showswversion = SwVersion.find(params[:id])

	end
	def new

	end

	def create
		#render plain: params[:swversion].inspect
		#@swversion = SwVersion.new(params[:swversion])
		@swversion = SwVersion.new(sw_version_params)
		@swversion.save
		#redirect_to @swversion
	end

	private
	def sw_version_params
		params.require(:sw_version).permit(:swversion, :description)
	end

end
