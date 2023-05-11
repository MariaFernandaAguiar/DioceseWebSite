class CreateDateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :date_sections do |t|
      t.string :title
      t.text :body
      t.string :data
      t.string :url

      t.timestamps
    end
  end
end
