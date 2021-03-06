class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.date :DOB
      t.decimal :contact
      t.string :location

      t.timestamps
    end
  end
end
