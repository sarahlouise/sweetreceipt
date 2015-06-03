class DonationsController < ApplicationController
# before_action :all_donations, only [:index, :create]
# respond_to :html, :js

def index
	@donations = Donation.all
end

def show
	@donation = Donation.find(params[:id])
end

def new
	@donation = Donation.new
end

def create
	@receipt = Receipt.find(params[:id])
	@donation = @receipt.donations.new(donation_params)
	if @donation.save
		redirect_to receipt_path(@receipt, @donation)
	else
		render :new
	end
end

# def edit
# 	@donation = donation.find(params[:id])
# end

# def update
# 	@donation = donation.find(params[:id])
# 	if @donation.update_attributes(donation_params)
# 		redirect_to receipt_path(@receipt, @donation)
# 	else
# 	  render :edit
# 	end
# end

def destroy
	@receipt = Receipt.find(params[:receipt_id])
	@donation = @receipt.donations.find(params[:id])
	@donation.destroy
	redirect_to donations_path
end

private
	def donation_params
	  params.require(:donation).permit(:item_category, :item_type, :value, :receipt_id)
	end
end
