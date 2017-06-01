class CreateCriancas < ActiveRecord::Migration[5.0]
  def change
    create_table :criancas do |t|
      t.string :name
      t.string :mes
      t.integer :ano
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
