class ClubsController < ApplicationController
	before_action :set_club, only: [:show, :edit, :update, :destroy, :toggle_active_status]
	access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

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

	def toggle_active_status
		if @club.inactive?
			@club.active!
		elsif @club.active?
			@club.inactive!
		end
		redirect_to club_show_path, notice: 'Club status was updated.'
	end

	def destroy
		@club.destroy
	    respond_to do |format|
	      format.html { redirect_to root_path, notice: 'Record was removed.' }
	    end
	end

	def index
		@clubs = Club.all
		@page_title = "Sports clubs"
	end

	def new
		@club = Club.new
		1.times { @club.teams.build }
		1.times { @club.campaigns.build }
		1.times { @club.people.build }
		@page_title = "New sports clubs"
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
		@page_title = @club.club_name
		@seo_keywords = @club.sport
	end

end

private
	def club_params
    	params.require(:club).permit(
			:club_name, 
			:sport, 
			:club_role, 
			:main_image, 
			:address, 
			:active_status, 
			:sport_icon, 
			teams_attributes: [:name], 
			people_attributes: [:first_name, :last_name, :position, :email], 
			campaigns_attributes: [:recruit_type, :player_type, :ideal_start_date, :job_description, :compensation, :passport_requirements ]
    	)
	end

	def set_club
		@club = Club.friendly.find(params[:id])
	end
end