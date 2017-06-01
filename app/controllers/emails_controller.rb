class EmailsController < ApplicationController
	def create
		@cliente = Cliente.find(params[:cliente_id])
		@email = @cliente.emails.create(email_params)
		redirect_to cliente_path(@cliente)
	end

	def destroy
		@cliente = Cliente.find(params[:cliente_id])
		@email = @cliente.emails.find(params[:id])
		@email.destroy
		redirect_to cliente_path(@cliente)
	end

	private
	def email_params
		params.require(:email).permit(:address)
	end
end
