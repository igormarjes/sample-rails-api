class CreateCadastres < ActiveRecord::Migration[7.0]
  def change
    create_table :cadastres do |t|
      t.string :name
      t.string :cpf
      t.date :born

      t.timestamps
    end
  end
end
