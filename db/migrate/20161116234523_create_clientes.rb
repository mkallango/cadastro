class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
