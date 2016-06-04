module ApplicationHelper
	def novo_comentario (comentavel)
		render partial: "comentarios/novo_comentario", locals: {comentavel: comentavel}
	end
end
