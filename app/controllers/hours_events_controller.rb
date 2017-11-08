class HoursEventsController < ApplicationController
  before_action :set_hours_event, only: [:show, :edit, :update, :destroy]

  # GET /hours_events
  # GET /hours_events.json
  def index
    @hours_events = HoursEvent.all
  end

  # GET /hours_events/1
  # GET /hours_events/1.json
  def show
  end

  # GET /hours_events/new
  def new
    @hours_event = HoursEvent.new
  end

  # GET /hours_events/1/edit
  def edit
  end

  # POST /hours_events
  # POST /hours_events.json
  def create
    @hours_event = HoursEvent.new(hours_event_params)

    respond_to do |format|
      if @hours_event.save
        format.html { redirect_to hours_events_path, notice: 'Hours event was successfully created.' }
        format.json { render :show, status: :created, location: @hours_event }
      else
        format.html { render :new }
        format.json { render json: @hours_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours_events/1
  # PATCH/PUT /hours_events/1.json
  def update
    respond_to do |format|
      if @hours_event.update(hours_event_params)
        format.html { redirect_to hours_events_path, notice: 'Hours event was successfully updated.' }
        format.json { render :show, status: :ok, location: @hours_event }
      else
        format.html { render :edit }
        format.json { render json: @hours_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_events/1
  # DELETE /hours_events/1.json
  def destroy
    @hours_event.destroy
    respond_to do |format|
      format.html { redirect_to hours_events_url, notice: 'Hours event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hours_event
      @hours_event = HoursEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hours_event_params
      params.require(:hours_event).permit(:hours_worked, :hours_worked_date)
    end
end
