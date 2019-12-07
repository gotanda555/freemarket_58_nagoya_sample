class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string      :name, null: false
      t.integer     :status, null: false
      t.text        :body
      t.timestamps
    end
  end
end
