json.extract! veiculo, :id, :name, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)