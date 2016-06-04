class RemoveColumnComentarioIdFromUsuarios < ActiveRecord::Migration
  def change
  	remove_column :usuarios, :comentario_id
  end
end
