class ClubsController < ApplicationController
	before_action :set_club, only: [:show, :edit, :update]

	def edit
	end

	def update
		respond_to do |format|
			if @club.update(club_params)
				format.html { redirect_to clubs_path, notice: 'Your record sucessfully updated.'}
			else 
				format.html { render :edit}
			end
		end
	end

	def index
		@clubs = Club.all
	end

	def new
		@club = Club.new
	end

	def create
		@club = Club.new(club_params)

		respond_to do |format|
			if @club.save
				format.html { redirect_to clubs_path, notice: 'Your club is now live.' }
			else 
				format.html { render :new }
		end
	end

	def show
	end


end

private
	def club_params
    	params.require(:club).permit(:club_name, :sport, :club_role, :address)
	end

	def set_club
		@club = Club.find(params[:id])
	end
end