class DevicesController < ApplicationController
  before_action :logged_in_user, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:edit, :update, :destroy]
  
  def index
    @devices = Device.all
  end
  
  def show
    @device = Device.find(params[:id])
  end
  
  def new
    @device = Device.new
  end
  
  def edit
    @device = Device.find(params[:id])
  end
  
  def create
    @device = Device.new(device_params)

    if @device.save
      redirect_to @device
    else
      render 'new'
    end
  end
  
  def update
    @device = Device.find(params[:id])
    if @device.update(device_params)
      redirect_to @device
    else
      render 'edit'
    end
  end

  def destroy
    @device = Device.find(params[:id])
    @device.destroy
    respond_to do |format|
      format.html { redirect_to devices_url, notice: 'Device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def loan
    dev = Device.find(params[:id])
    return_result = dev.update_state(1, current_user.name)
    if return_result
      redirect_to dev
    else
    end
    #connection.execute("UPDATE devices SET state = 1")
  end

  private
  
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in"
        redirect_to login_url
      end
    end
  
    def admin_user
      redirect_to(root_url) unless user_permission_id?(current_user)
    end
  
    def device_params
      params.require(:device).permit(:name, :model, :serial_num, :buy_date, :age_limit, :borrower, :loan_date, :return_date, :state)
    end
end
