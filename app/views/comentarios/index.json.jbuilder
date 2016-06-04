json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :conteudo, :comentavel_id
  json.url comentario_url(comentario, format: :json)
end
