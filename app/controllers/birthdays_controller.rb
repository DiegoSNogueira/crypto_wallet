class BirthdaysController < ApplicationController
  def index
    @birthdays = Birthday.all
  end
  def update
    x =  params[:id].size - 1

    for i in 0..x
      x = Birthday.where("id = #{params[:id][i]} and dia = #{params[:dia][i]}")
      x.update_all("mes = #{params[:mes][i]} and ano = #{params[:ano][i]}")
    end     
  end

  private
  def birthday_params
    params.require(:birthday).permit(:id, :dia, :mes, :ano)
  end
end
