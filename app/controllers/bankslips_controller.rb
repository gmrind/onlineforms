class BankslipsController < ApplicationController
  before_action :set_bankslip, only: [:show, :edit, :update, :destroy]

  def index
    @bankslips = Bankslip.search(params[:search])
    #redirect_to new_bankslip_path
  end

  def show
    if @bankslip 
      render :show
    else
      redirect_to bankslips_path, alert: 'Worng bankslip URL...! Search your bankslip by typing your CNIC number or'
    end
  end

  def new
    @bankslip = Bankslip.new
  end

  def edit
  end

  def create
    @bankslip = Bankslip.new(bankslip_params)

    respond_to do |format|
      if @bankslip.save
        format.html { redirect_to @bankslip, notice: 'Bankslip was successfully created.' }
        format.json { render :show, status: :created, location: @bankslip }
        #format.pdf  {send_data(kit.to_pdf, :filename => "#{@bankslip.aname.titleize}_#{@bankslip.bank.bname}_bankslip.pdf", :type => 'application/pdf')}
      else
        format.html { render :new }
        format.json { render json: @bankslip.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bankslip.update(bankslip_params)
        format.html { redirect_to @bankslip, notice: 'Bankslip was successfully updated.' }
        format.json { render :show, status: :ok, location: @bankslip }
      else
        format.html { render :edit }
        format.json { render json: @bankslip.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bankslip.destroy
    respond_to do |format|
      format.html { redirect_to bankslips_url, notice: 'Bankslip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_bankslip
      @bankslip = Bankslip.find_by_slug(params[:id])
    end

    def bankslip_params
      params.require(:bankslip).permit(:exad_name, :ddate, :amount, :aname, :fname, :cnic, :bank_id, :department_id, :purpose_id)
    end
end
