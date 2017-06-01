class CriancasController < ApplicationController
	def create
		@cliente = Cliente.find(params[:cliente_id])
		@crianca = @cliente.criancas.create(crianca_params)
		redirect_to cliente_path(@cliente)
	end

	def destroy
		@cliente = Cliente.find(params[:cliente_id])
		@crianca = @cliente.criancas.find(params[:id])
		@crianca.destroy
		redirect_to cliente_path(@cliente)
	end

	private
	def crianca_params
		params.require(:crianca).permit(:name, :mes, :ano)
	end
end
