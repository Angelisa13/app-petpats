class User < ActiveRecord::Migration[7.1]
  def change
    create_table :user do |u|
      u.string :nombre
      u.string :apellidos
      u.string :contra
      u.string :telefono
      u.string :privilegio
  end
end
