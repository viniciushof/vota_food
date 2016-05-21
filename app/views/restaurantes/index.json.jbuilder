json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :nome, :especialidade, :endereco
  json.url restaurante_url(restaurante, format: :json)
end
