class HubsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  # before_filter :check_hub_admin!, only: [:update, :destroy]
  skip_before_filter :verify_authenticity_token 

  before_action :set_hub, only: [:edit, :update, :destroy]

  # GET /hubs
  # GET /hubs.json
  def index
    @hubs = Hub.all
    respond_to do |format|
      format.html { @hubs }
      format.json { render json: @hubs }
    end
  end

  # GET /hubs/1
  # GET /hubs/1.json
  def show
  end

  # GET /hubs/new
  # GET /hubs/new.json
  def new
    @hub = Hub.new
    respond_to do |format|
      format.html { redirect_to @hub, notice: 'Hub was successfully created.' }
      format.json { render json: @hub }
    end
  end

  # GET /hubs/1/edit
  def edit
  end

  # POST /hubs
  # POST /hubs.json
  def create
    saved = false
    Hub.transaction do
      @hub = Hub.new(hub_params)
      admin_membership = AdminMembership.new(hub:@hub,user:current_user)
      saved = @hub.save and admin_membership.save
    end
    respond_to do |format|
      if saved
        format.html { redirect_to @hub, notice: 'Hub was successfully created.' }
        format.json { render json: @hub }
      else
        format.html { render action: 'new' }
        format.json { render json: @hub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hubs/1
  # PATCH/PUT /hubs/1.json
  def update
    respond_to do |format|
      if @hub.update(hub_params)
        format.html { redirect_to @hub, notice: 'Hub was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hubs/1
  # DELETE /hubs/1.json
  def destroy
    @hub.destroy
    respond_to do |format|
      format.html { redirect_to hubs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hub
      @hub = Hub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hub_params
      params.require(:hub).permit(:name, :description)
    end
end
