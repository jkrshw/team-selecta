class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]
  before_action :set_event
  before_action :set_user, only: [:create, :update]

  before_filter :authenticate_user!, only: [:new, :create, :update, :destroy]
  skip_before_filter :verify_authenticity_token 

  # GET /events/:event_id/guests
  # GET /events/:event_id/guests.json
  def index
    @guests = Guest.where(event_id: params[:event_id])
  end

  # GET /events/:event_id/guests/1
  # GET /events/:event_id/guests/1.json
  def show
  end

  # GET /events/:event_id/guests/new
  def new
    @guest = Guest.new
  end

  # GET /events/:event_id/guests/1/edit
  def edit
  end

  # POST /events/:event_id/guests
  # POST /events/:event_id/guests.json
  def create
    @guest = @event.guests.create(guest_params)

    respond_to do |format|
      if @guest.save
        format.html { redirect_to @guest, notice: 'Guest was successfully created.' }
        format.json { render json: @guest }
      else
        format.html { render action: 'new' }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/:event_id/guests/1
  # PATCH/PUT /events/:event_id/guests/1.json
  def update
    respond_to do |format|
      if @guest.update(guest_params)
        format.html { redirect_to @guest, notice: 'Guest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/:event_id/guests/1
  # DELETE /events/:event_id/guests/1.json
  def destroy
    @guest.destroy
    respond_to do |format|
      format.html { redirect_to guests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    def set_event
      @event = Event.find(params[:event_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_params
      params.require(:guest).permit(:user_id, :attending_state)
    end
end
