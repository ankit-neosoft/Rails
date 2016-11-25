class AccountsController < ApplicationController
	
	def show
		@account = Account.find(params[:id])
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new(account_params)

		if @account.save
		redirect_to @account
		else
			render 'new'
		end
	end

	private
	def account_params
		params.require(:account).permit(:name, :email, :email_confirmation,:need_estatement,:terms_of_service)
	end
end
