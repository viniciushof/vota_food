class AddColumnsToComentarios < ActiveRecord::Migration
  def change
    add_column :comentarios, :comentavel_type, :string
  end
end
