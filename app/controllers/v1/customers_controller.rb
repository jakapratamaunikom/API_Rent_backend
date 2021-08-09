class V1::CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update, :destroy]
  
  def index
    @customers = Customer.all
    render json: @customers
  end

  def new
    @customer.new(customer_params)
  end

  def create
    @customer.create(customer_params)
    json_response(@customer)
    
  end

  def edit
  end

  def update
    @customer.update_attributes(customer_params)
    head :no_content
  end

  def destroy
    @customer.destroy
    head :no_content

  end
  
  def show
    render :show#, status: :created
    # json_response(@customer)
  end
  
  private

  def customer_params
    params.require(:customer).permit(:name, :address, :age, :phone, :gender)
  end

  def set_customer
    @customer = Customer.find_by_id(params[:id]) 
  end
end
