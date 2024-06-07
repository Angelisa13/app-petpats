class User < ActiveRecord::Migration[7.1]
  def change
    create_table :user do |t|
      t.string :nombre
      t.string :apellidos
      t.string :contra
      t.string :telefono
      t.string :privilegio
  end
end
