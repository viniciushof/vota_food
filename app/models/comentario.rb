class Comentario < ActiveRecord::Base
	belongs_to :comentavel, polymorphic: true
	belongs_to :usuario
end
