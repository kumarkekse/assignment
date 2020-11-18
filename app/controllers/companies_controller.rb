class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def index
    @companies = Company.where(user_id: current_user.id)

    if params[:company_id].present?
      @cash_management = Company.find(params[:company_id]).cash_management
    end

    respond_to do |format|
      format.html
      format.json { render json: @companies }
    end
  end

  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html do
          redirect_to(@company,
                      notice: 'company was successfully created.')
        end
        format.json do
          render json: @company,
                 status: :created, location: @company
        end
      else
        format.html  { render action: 'new' }
        format.json  do
          render json: @company.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  def show
    @company = Company.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @company }
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :country, :currency, :user_id)
  end
end
