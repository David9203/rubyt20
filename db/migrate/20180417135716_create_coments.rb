class CreateComents < ActiveRecord::Migration[5.1]
  def change
    create_table :coments do |t|
      t.string :comentarista
      t.text :contenido
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
