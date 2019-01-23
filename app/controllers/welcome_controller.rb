class WelcomeController < ApplicationController
  def index
    #cookies[:curso] = "Curso de Ruby on Rails"
    @teste = params[:var]
  end
end
