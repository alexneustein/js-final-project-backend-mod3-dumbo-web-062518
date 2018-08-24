class AddColumnEffectMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :effect, :string
  end
end
