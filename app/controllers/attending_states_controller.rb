class AttendingStatesController < ApplicationController
  before_action :set_attending_state, only: [:show]

  # GET /attending_states
  # GET /attending_states.json
  def index
    @attending_states = AttendingState.all
  end

  # GET /attending_states/1
  # GET /attending_states/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attending_state
      @attending_state = AttendingState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attending_state_params
      params[:attending_state]
    end
end
