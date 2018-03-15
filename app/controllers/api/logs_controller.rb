class Api::LogsController < ApplicationController
  before_action :set_log, only: [:show, :update, :destroy, :logs]

  def index
    @logs = Log.all
    render json: @logs
  end

  def show
    render json: @log
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      render json: @log
    else
      render json: { errors: { message: 'log NOT created' }}
    end
  end
  
  def update
    @log.update(log_params)
    if @log.save
      render json: @log
    else
      render json: { errors: { message: 'log NOT updated' }}
    end
  end

  def destroy
    @log.delete
  end

  private
  def set_log
    @log = Log.find_by_id(params[:id])
  end

  def log_params
    params.require(:log).permit(:teacher_id, :student_id, :lesson_id, :resource_id, :content)
  end
end
