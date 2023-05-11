class CreateSliders < ActiveRecord::Migration[7.0]
  def change
    create_table :sliders do |t|
      t.string :title
      t.text :body
      t.string :url

      t.timestamps
    end
  end
end
