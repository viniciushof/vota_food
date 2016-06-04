class AddColumnComentarioIdToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :comentario_id, :integer
  end
end
