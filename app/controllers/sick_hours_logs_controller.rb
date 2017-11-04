class SickHoursLogsController < ApplicationController
  before_action :set_sick_hours_log, only: [:show, :edit, :update, :destroy]

  # GET /sick_hours_logs
  # GET /sick_hours_logs.json
  def index
    @sick_hours_logs = SickHoursLog.all
  end

  # GET /sick_hours_logs/1
  # GET /sick_hours_logs/1.json
  def show
  end

  # GET /sick_hours_logs/new
  def new
    @sick_hours_log = SickHoursLog.new
  end

  # GET /sick_hours_logs/1/edit
  def edit
  end

  # POST /sick_hours_logs
  # POST /sick_hours_logs.json
  def create
    @sick_hours_log = SickHoursLog.new(sick_hours_log_params)

    respond_to do |format|
      if @sick_hours_log.save
        format.html { redirect_to @sick_hours_log, notice: 'Sick hours log was successfully created.' }
        format.json { render :show, status: :created, location: @sick_hours_log }
      else
        format.html { render :new }
        format.json { render json: @sick_hours_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sick_hours_logs/1
  # PATCH/PUT /sick_hours_logs/1.json
  def update
    respond_to do |format|
      if @sick_hours_log.update(sick_hours_log_params)
        format.html { redirect_to @sick_hours_log, notice: 'Sick hours log was successfully updated.' }
        format.json { render :show, status: :ok, location: @sick_hours_log }
      else
        format.html { render :edit }
        format.json { render json: @sick_hours_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sick_hours_logs/1
  # DELETE /sick_hours_logs/1.json
  def destroy
    @sick_hours_log.destroy
    respond_to do |format|
      format.html { redirect_to sick_hours_logs_url, notice: 'Sick hours log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sick_hours_log
      @sick_hours_log = SickHoursLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sick_hours_log_params
      params.require(:sick_hours_log).permit(:sick_hours_entry, :user_id)
    end
end
