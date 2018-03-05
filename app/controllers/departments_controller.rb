class DepartmentsController < ApplicationController
  before_action :logged_in_user, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:edit, :update, :destroy]
  
  def index
    @departments = Department.all
  end
  
  def show
    @department = Department.find(params[:id])
    @department.id == 1 ? (@users = User.all) : (@users = User.where(department_id: @department.id))
  end
  
  def new
    @department = Department.new
  end
  
  def edit
    @department = Department.find(params[:id])
  end
  
  def create
    @department = Department.new(department_params)

    respond_to do |format|
      if @department.save
        format.html { redirect_to @department, notice: 'Department was successfully created.' }
        format.json { render :show, status: :created, location: @department }
      else
        format.html { render :new }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to @department, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @department }
      else
        format.html { render :edit }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was successfully destroyed.' }
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
    
    def department_params
      params.require(:department).permit(:name, :coding, :parent)
    end
end
