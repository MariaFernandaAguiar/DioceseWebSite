class CreateSliderImgs < ActiveRecord::Migration[7.0]
  def change
    create_table :slider_imgs do |t|
      t.string :url
      t.references :slider, foreign_key: true
      t.timestamps
    end
  end
end
