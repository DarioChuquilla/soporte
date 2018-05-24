class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :basic_data
  
  def basic_data
    if ['edit','new'].include?(params[:action])
      # lista de usuarios para formularios
      @usuarios = User.all
      @departamentos = Departamento.all
      @estados = [{id: "REGISTRADO", name: "REGISTRADO"},
                  {id: "ASIGNADO", name: "ASIGNADO"},
                  {id: "REASIGNADO", name: "REASIGNADO"},
                  {id: "ESCALADO", name: "ESCALADO"},
                  {id: "DEVUELTO", name: "DEVUELTO"},
                  {id: "CERRADO", name: "CERRADO"}]
    end
  end
  
end

