class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string      :name, null: false
      t.integer     :status, null: false
      t.text        :body
      t.references  :category, foreign_key: true
      t.string      :size
      t.references  :brand, foreign_key: true
      t.string      :condition, null: false
      

      t.integer     :status, null: false

      t.timestamps
    end
  end
end
