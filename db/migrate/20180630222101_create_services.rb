class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string 	 :name
      t.string   :description
      t.string   :slug
      t.string   :tags

      t.timestamps
    end
  end
end
