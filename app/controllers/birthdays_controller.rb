class BirthdaysController < ApplicationController
  def index
    @birthdays = Birthday.all
  end
  def update
    @birthday = Birthday.find(params[:id][0])
    puts '============================'
    # params.delete()
    puts params.keys
    Birthday.update(params)
      
  end

  private
  def birthday_params
    params.require(:birthday).permit(:id, :dia, :mes, :ano)
  end
end
