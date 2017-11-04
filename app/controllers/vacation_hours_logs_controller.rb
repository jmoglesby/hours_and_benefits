class VacationHoursLogsController < ApplicationController
  before_action :set_vacation_hours_log, only: [:show, :edit, :update, :destroy]

  # GET /vacation_hours_logs
  # GET /vacation_hours_logs.json
  def index
    @vacation_hours_logs = VacationHoursLog.all
  end

  # GET /vacation_hours_logs/1
  # GET /vacation_hours_logs/1.json
  def show
  end

  # GET /vacation_hours_logs/new
  def new
    @vacation_hours_log = VacationHoursLog.new
  end

  # GET /vacation_hours_logs/1/edit
  def edit
  end

  # POST /vacation_hours_logs
  # POST /vacation_hours_logs.json
  def create
    @vacation_hours_log = VacationHoursLog.new(vacation_hours_log_params)

    respond_to do |format|
      if @vacation_hours_log.save
        format.html { redirect_to @vacation_hours_log, notice: 'Vacation hours log was successfully created.' }
        format.json { render :show, status: :created, location: @vacation_hours_log }
      else
        format.html { render :new }
        format.json { render json: @vacation_hours_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacation_hours_logs/1
  # PATCH/PUT /vacation_hours_logs/1.json
  def update
    respond_to do |format|
      if @vacation_hours_log.update(vacation_hours_log_params)
        format.html { redirect_to @vacation_hours_log, notice: 'Vacation hours log was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacation_hours_log }
      else
        format.html { render :edit }
        format.json { render json: @vacation_hours_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacation_hours_logs/1
  # DELETE /vacation_hours_logs/1.json
  def destroy
    @vacation_hours_log.destroy
    respond_to do |format|
      format.html { redirect_to vacation_hours_logs_url, notice: 'Vacation hours log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacation_hours_log
      @vacation_hours_log = VacationHoursLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacation_hours_log_params
      params.require(:vacation_hours_log).permit(:vacation_hours_entry, :date, :user_id)
    end
end
