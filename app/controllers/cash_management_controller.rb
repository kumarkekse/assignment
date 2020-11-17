class CashManagementController < ApplicationController
	def create
		@cash_management = CashManagement.new(cash_management_params)

	  respond_to do |format|
	    if @cash_management.save
	      format.html  { redirect_to(@cash_management,
	                    notice: 'data was successfully created.') }
	      format.json  { render :json => @cash_management,
	                    status: :created, :location => @cash_management }
	    else
	      format.html  { render action: "new" }
	      format.json  { render json: @cash_management.errors,
	                    status: :unprocessable_entity }
	    end
	  end
	end

	def show
    @cash_management = CashManagement.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @cash_management }
    end
  end

  def cash_management_table
  	@cash_management = Company.find(params[:company_id]).cash_management
  	respond_to do |format|
      format.html
      format.json { render json: @cash_management }
    end
  end


  private

	def cash_management_params
    params.require(:cash_management).permit(:initial_cash, :cash_out, :cash_in, :company_id)
  end
end
