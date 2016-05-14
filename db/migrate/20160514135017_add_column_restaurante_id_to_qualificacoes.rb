class AddColumnRestauranteIdToQualificacoes < ActiveRecord::Migration
  def change
    add_column :qualificacoes, :restaurante_id, :integer
  end
end
