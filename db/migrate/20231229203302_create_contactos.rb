class CreateContactos < ActiveRecord::Migration[7.0]
  def change
    create_table :contactos do |t|
      t.text :nombre
      t.date :fecha
      t.integer :numero
      t.text :nombre_empresa
      t.text :correo_electronico

      t.timestamps
    end
  end
end
