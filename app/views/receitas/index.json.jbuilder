json.array!(@receitas) do |receita|
  json.extract! receita, :id, :conteudo
  json.url receita_url(receita, format: :json)
end
