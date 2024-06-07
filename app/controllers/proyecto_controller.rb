class ProyectoController < ApplicationController
  def inicio
    render file: Rails.root.join('public', 'proyecto', 'inicio.html'), layout: false
  end
end
