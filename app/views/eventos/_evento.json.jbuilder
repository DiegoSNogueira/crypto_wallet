json.extract! evento, :id, :nome, :local, :inicio, :termino, :created_at, :updated_at
json.url evento_url(evento, format: :json)
