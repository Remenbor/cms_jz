class DevicesController < ApplicationController
  #before_action :logged_in_user, only: [:show, :edit, :update, :destroy]
  #before_action :admin_user, only: [:edit, :update, :destroy]

  # GET /devices
  # GET /devices.json
  def index
    @devices = Device.all
  end

  # GET /devices/1
  # GET /devices/1.json
  def show
    @device = Device.find(params[:id])
  end

  # GET /devices/new
  def new
    @device = Device.new
  end

  # GET /devices/1/edit
  def edit
    @device = Device.find(params[:id])
  end

  # POST /devices
  # POST /devices.json
  def create
    @device = Device.new(device_params)

    if @device.save
      redirect_to @device
    else
      render 'new'
    end
  end

  # PATCH/PUT /devices/1
  # PATCH/PUT /devices/1.json
  def update
    @device = Device.find(params[:id])
    if @device.update(device_params)
      @device.loan_record(@device)
      redirect_to @device
    else
      render 'edit'
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    @device.destroy
    respond_to do |format|
      format.html { redirect_to devices_url, notice: 'Device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def loan
    dev = Device.find(params[:id])
    return_result = dev.update_state(1)
    if return_result
      redirect_to dev
    else
    end
    #connection.execute("UPDATE devices SET state = 1")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end

  def admin_user
    redirect_to(root_url) unless user_permission_id?(current_user)
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_params
      params.require(:device).permit(:name, :model, :serial_num, :buy_date, :age_limit, :borrower, :loan_date, :return_date, :state)
    end
end
