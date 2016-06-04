class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :conteudo
      t.integer :comentavel_id

      t.timestamps null: false
    end
  end
end
