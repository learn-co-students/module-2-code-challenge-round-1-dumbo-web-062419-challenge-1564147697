class LogsController < ApplicationController
  def index
    @logs= Log.all
  end

  def show
    find_log
  end

  def edit
    find_log
  end

  def new
    @log= Log.new
  end

  def create
    @log = Log.create(log_params)
  end

  def update
    find_log
    @log.update(log_params)
    redirect_to @log
  end

  def destroy
    find_log
    @log.destroy
    redirect_to logs_path
  end

  private 
  def log_params
    params.require(:log).permit(:date, :number)
  end

  def find_log
    @log= Log.find(params[:id])
  end



end
