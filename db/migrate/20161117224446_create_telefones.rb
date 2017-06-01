class CreateTelefones < ActiveRecord::Migration[5.0]
  def change
    create_table :telefones do |t|
      t.string :ddd
      t.string :fone
      t.string :tipo
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
