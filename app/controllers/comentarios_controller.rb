class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]
  before_action :set_articulo, only: [:create, :destroy]


  # POST /comentarios
  # POST /comentarios.json
  def create
    @comentario = @articulo.comentarios.create(comentario_params)
    redirect_to @articulo
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
    @comentario = @articulo.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to @articulo
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_params
      params.require(:comentario).permit(:nombre, :texto, :articulo_id)
    end

    def set_articulo
      @articulo = Articulo.find(params[:articulo_id])
    end
end
