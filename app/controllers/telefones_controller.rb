class TelefonesController < ApplicationController
	def create
		@cliente = Cliente.find(params[:cliente_id])
		@telefone = @cliente.telefones.create(fone_params)
		redirect_to cliente_path(@cliente)
	end

	def destroy
		@cliente = Cliente.find(params[:cliente_id])
		@telefone = @cliente.telefones.find(params[:id])
		@telefone.destroy
		redirect_to cliente_path(@cliente)
	end

	private
	def fone_params
		params.require(:telefone).permit(:ddd, :fone, :tipo)
	end
end
