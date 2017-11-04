class HoursLogsController < ApplicationController
  before_action :set_hours_log, only: [:show, :edit, :update, :destroy]

  # GET /hours_logs
  # GET /hours_logs.json
  def index
    @hours_logs = HoursLog.all
  end

  # GET /hours_logs/1
  # GET /hours_logs/1.json
  def show
  end

  # GET /hours_logs/new
  def new
    @hours_log = HoursLog.new
  end

  # GET /hours_logs/1/edit
  def edit
  end

  # POST /hours_logs
  # POST /hours_logs.json
  def create
    @hours_log = HoursLog.new(hours_log_params)

    respond_to do |format|
      if @hours_log.save
        format.html { redirect_to @hours_log, notice: 'Hours log was successfully created.' }
        format.json { render :show, status: :created, location: @hours_log }
      else
        format.html { render :new }
        format.json { render json: @hours_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours_logs/1
  # PATCH/PUT /hours_logs/1.json
  def update
    respond_to do |format|
      if @hours_log.update(hours_log_params)
        format.html { redirect_to @hours_log, notice: 'Hours log was successfully updated.' }
        format.json { render :show, status: :ok, location: @hours_log }
      else
        format.html { render :edit }
        format.json { render json: @hours_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_logs/1
  # DELETE /hours_logs/1.json
  def destroy
    @hours_log.destroy
    respond_to do |format|
      format.html { redirect_to hours_logs_url, notice: 'Hours log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hours_log
      @hours_log = HoursLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hours_log_params
      params.require(:hours_log).permit(:hours_worked, :date, :user_id)
    end
end
