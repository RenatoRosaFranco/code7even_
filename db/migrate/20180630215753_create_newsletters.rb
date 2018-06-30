class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string   :name
      t.string   :email
      t.boolean  :status
      t.string   :token
      t.date     :subscription_date

      t.timestamps
    end
    add_index :newsletters, :email, unique: true
  end
end
