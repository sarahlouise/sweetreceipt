class ReceiptsController < ApplicationController

def index
	@receipts = Receipt.all
end

def show
	@receipt = Receipt.find(params[:id])
end

def new
	@receipt = Receipt.new
end

def create
	@receipt = current_user.receipts.new(receipt_params)
	if @receipt.save
		redirect_to receipt_path(@receipt)
	else
		render :new
	end
end

def update
	@receipt = Receipt.find(params[:id])
	@receipt.update_attributes(:pending => false)
	redirect_to root_path
end

private
	def receipt_params
		params.require(:receipt).permit(:title, :pending)
	end
end