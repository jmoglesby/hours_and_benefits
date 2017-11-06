class VacationHoursEventsController < ApplicationController
  before_action :set_vacation_hours_event, only: [:show, :edit, :update, :destroy]

  # GET /vacation_hours_events
  # GET /vacation_hours_events.json
  def index
    @vacation_hours_events = VacationHoursEvent.all
  end

  # GET /vacation_hours_events/1
  # GET /vacation_hours_events/1.json
  def show
  end

  # GET /vacation_hours_events/new
  def new
    @vacation_hours_event = VacationHoursEvent.new
  end

  # GET /vacation_hours_events/1/edit
  def edit
  end

  # POST /vacation_hours_events
  # POST /vacation_hours_events.json
  def create
    @vacation_hours_event = VacationHoursEvent.new(vacation_hours_event_params)

    respond_to do |format|
      if @vacation_hours_event.save
        format.html { redirect_to @vacation_hours_event, notice: 'Vacation hours event was successfully created.' }
        format.json { render :show, status: :created, location: @vacation_hours_event }
      else
        format.html { render :new }
        format.json { render json: @vacation_hours_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacation_hours_events/1
  # PATCH/PUT /vacation_hours_events/1.json
  def update
    respond_to do |format|
      if @vacation_hours_event.update(vacation_hours_event_params)
        format.html { redirect_to @vacation_hours_event, notice: 'Vacation hours event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacation_hours_event }
      else
        format.html { render :edit }
        format.json { render json: @vacation_hours_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacation_hours_events/1
  # DELETE /vacation_hours_events/1.json
  def destroy
    @vacation_hours_event.destroy
    respond_to do |format|
      format.html { redirect_to vacation_hours_events_url, notice: 'Vacation hours event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacation_hours_event
      @vacation_hours_event = VacationHoursEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacation_hours_event_params
      params.require(:vacation_hours_event).permit(:vacation_hours_used, :vacation_hours_gained, :vacation_hours_adj_date)
    end
end
