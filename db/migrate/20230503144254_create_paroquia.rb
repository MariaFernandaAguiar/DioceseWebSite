class CreateParoquia < ActiveRecord::Migration[7.0]
  def change
    create_table :paroquia do |t|
      t.string :title
      t.string :local
      t.string :url

      t.timestamps
    end
  end
end
