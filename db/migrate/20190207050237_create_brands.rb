class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.integer     :inital
      t.string      :brandname
      t.timestamps
    end
  end
end
