class RegistrationsController < ApplicationController
  before_action :set_registration, only: [:show, :edit, :update, :destroy]

  def index
    @registrations = Registration.search(params[:search])
    #redirect_to new_registration_path
  end

  def show
    if @registration
      render :show
    else
      redirect_to registrations_path, alert: 'Worng registration URL...! Search registration by typing CNIC number with dashes or'
    end
  end

  def new
    @registration = Registration.new
    2.times { @registration.examinations.build }
  end

  def edit
  end

  def create
    @registration = Registration.new(registration_params)

    respond_to do |format|
      if @registration.save
        format.html { redirect_to @registration, notice: 'Registration was successfully created.' }
        format.json { render :show, status: :created, location: @registration }
      else
        format.html { render :new }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @registration.update(registration_params)
        format.html { redirect_to @registration, notice: 'Registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration }
      else
        format.html { render :edit }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @registration.destroy
    respond_to do |format|
      format.html { redirect_to registrations_url, notice: 'Registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_registration
      @registration = Registration.find_by_slug(params[:id])
    end
  
    def registration_params
      params.require(:registration).permit(:sname, :fname, :d_of_b, :name_of_year_examination, :previous_registration_no, :board_university, 
                                           :local_domicile, :religion, :cnic_no, :permanent_address, :present_address, :challan_no, :amount, 
                                           :registration_date, :ename, :year, :annual_supply, :roll_no, :division, :subject_pass, :board_uni, 
                                           subject_ids:[], examinations_attributes: [ :id, :ename, :year, :annual_supply, :roll_no, :division, 
                                           :subject_pass, :board_uni])
    end
end
