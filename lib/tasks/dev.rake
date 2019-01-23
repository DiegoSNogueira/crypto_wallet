namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?   
      spinner = TTY::Spinner.new("[:spinner] Executando Tarefas")
      spinner.auto_spin # Automatic animation with default interval  
      %x(rails db:drop:_unsafe db:create db:migrate db:seed)
      spinner.success('(Concluído com sucesso)')
    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

end
