class SickHoursEventsController < ApplicationController
  before_action :set_sick_hours_event, only: [:show, :edit, :update, :destroy]

  # GET /sick_hours_events
  # GET /sick_hours_events.json
  def index
    @sick_hours_events = SickHoursEvent.all
  end

  # GET /sick_hours_events/1
  # GET /sick_hours_events/1.json
  def show
  end

  # GET /sick_hours_events/new
  def new
    @sick_hours_event = SickHoursEvent.new
  end

  def gain
    @sick_hours_event = SickHoursEvent.new
  end

  # GET /sick_hours_events/1/edit
  def edit
  end

  # POST /sick_hours_events
  # POST /sick_hours_events.json
  def create
    @sick_hours_event = SickHoursEvent.new(sick_hours_event_params)

    respond_to do |format|
      if @sick_hours_event.save
        format.html { redirect_to sick_hours_events_path, notice: 'Sick hours event was successfully created.' }
        format.json { render :show, status: :created, location: @sick_hours_event }
      else
        format.html { render :new }
        format.json { render json: @sick_hours_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sick_hours_events/1
  # PATCH/PUT /sick_hours_events/1.json
  def update
    respond_to do |format|
      if @sick_hours_event.update(sick_hours_event_params)
        format.html { redirect_to sick_hours_events_path, notice: 'Sick hours event was successfully updated.' }
        format.json { render :show, status: :ok, location: @sick_hours_event }
      else
        format.html { render :edit }
        format.json { render json: @sick_hours_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sick_hours_events/1
  # DELETE /sick_hours_events/1.json
  def destroy
    @sick_hours_event.destroy
    respond_to do |format|
      format.html { redirect_to sick_hours_events_url, notice: 'Sick hours event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sick_hours_event
      @sick_hours_event = SickHoursEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sick_hours_event_params
      params.require(:sick_hours_event).permit(:sick_hours_used, :sick_hours_gained, :sick_hours_adj_date)
    end
end
