class IncidenciaController < ApplicationController
  load_and_authorize_resource
  before_action :set_incidencia, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # @incidencia = Incidencia.all
    # respond_with(@incidencium)
  end

  def show
    respond_with(@incidencia)
  end

  def new
    @incidencia = Incidencia.new
    respond_with(@incidencia)
  end

  def edit
  end

  def create
    @incidencia = Incidencia.new(incidencia_params)
    @incidencia.save
    respond_with(@incidencia)
  end

  def update
    @incidencia.update(incidencia_params)
    respond_with(@incidencia)
  end

  def destroy
    @incidencia.destroy
    respond_with(@incidencia)
  end

  private
    def set_incidencia
      @incidencia = Incidencia.find(params[:id])
    end

    def incidencia_params
      params.require(:incidencia).permit(:tipo_error, :fecha_error, :descripcion_solucion, 
        :codigo_error, :descripcion, :fuente_error, :fecha_escalamiento, :user_id, :responsable_cierre_id, 
        :departamento_id, :estado, :descripcion_estado)
    end
end
