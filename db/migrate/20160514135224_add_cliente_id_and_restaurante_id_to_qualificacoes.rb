class AddClienteIdAndRestauranteIdToQualificacoes < ActiveRecord::Migration
  def change
    add_column :qualificacoes, :cliente_id, :integer
  end
end
