class ClubsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  # before_filter :check_hub_admin!, only: [:update, :destroy]
  skip_before_filter :verify_authenticity_token 

  before_action :set_club, only: [:show, :edit, :update, :destroy]

  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.all
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
  end

  # GET /clubs/new
  def new
    @club = Club.new
    respond_to do |format|
      format.html { redirect_to @club, notice: 'Club was successfully created.' }
      format.json { render json: @club }
    end
  end

  # GET /clubs/1/edit
  def edit
  end

  # POST /clubs
  # POST /clubs.json
  def create
    saved = false
    Club.transaction do
      @club = Club.new(club_params)
      admin_membership = AdminMembership.new(club:@club,user:current_user)
      saved = @club.save and admin_membership.save
    end
    respond_to do |format|
      if saved
        format.html { redirect_to @club, notice: 'Club was successfully created.' }
        format.json { render json: @club }
      else
        format.html { render action: 'new' }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to @club, notice: 'Club was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:name, :description)
    end
end
