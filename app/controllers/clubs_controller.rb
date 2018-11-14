class ClubsController < ApplicationController
	before_action :set_club, only: [:show, :edit, :update, :destroy, :toggle_active_status]

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

	create_table "campaigns", force: :cascade do |t|
    t.string "recruit_type"
    t.string "player_type"
    t.date "ideal_start_date"
    t.text "job_description"
    t.string "compensation"
    t.string "passport_requirements"
    t.bigint "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_campaigns_on_club_id"
  end



	def set_club
		@club = Club.friendly.find(params[:id])
	end
end