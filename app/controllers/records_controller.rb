class RecordsController < ApplicationController
  before_action :logged_in_user, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:edit, :update, :destroy]

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
  end

  def edit
    @record = Record.find(params[:id])
  end

  def create
    @record = Record.new(record_params)

    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: 'Record was successfully created.' }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
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

    def record_params
      params.require(:record).permit(:serial_num, :borrower, :loan_date, :return_date)
    end
end
