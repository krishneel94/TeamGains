class CreateGainsPages < ActiveRecord::Migration
  def change
    create_table :gains_pages do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
