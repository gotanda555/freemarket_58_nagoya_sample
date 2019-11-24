class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string      :name, null: false
      t.integer     :status
      t.text        :body
      t.references  :image, foreign_key: true
      t.timestamps
    end
  end
end
