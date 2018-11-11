class ClubsController < ApplicationController
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

end

private
	def club_params
    	params.require(:club).permit(:club_name, :sport, :club_role, :address)
	end
end